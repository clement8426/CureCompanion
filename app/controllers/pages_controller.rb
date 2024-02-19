require 'pdf/reader'

class PagesController < ApplicationController
  def home
    @prompts = Prompt.order(:name)
  end

  def submit_question
    @prompts = Prompt.order(:name)

    user_question = params[:prompt][:user_question]
    prompt_content = params[:prompt][:prompt_content]
    pdf_file = params[:prompt][:pdf_file]

    # Afficher les informations récupérées
    puts "User Question: #{user_question}"
    puts "Prompt Content: #{prompt_content}"
    puts "PDF File: #{pdf_file}"

    client = OpenAI::Client.new

    # Si un fichier PDF est présent, extraire le texte et l'envoyer à ChatGPT
    if pdf_file.present? && pdf_file.respond_to?(:tempfile)
      begin
        pdf_text = extract_text_from_pdf(pdf_file.tempfile.path)
        puts "Texte extrait du PDF : #{pdf_text}" # Ajoutez ce puts pour vérifier le texte extrait

        chatgpt_response = client.chat(parameters: {
          model: "gpt-3.5-turbo",
          messages: [
            { role: "user", content: "Give me a response like a doctor of #{prompt_content} with the student question #{user_question}" },
            { role: "system", content: "voici le cour de l'étudiant #{pdf_text}" }
          ]
        })
        @content = chatgpt_response["choices"][0]["message"]["content"]

        puts "ChatGPT Response: #{@content}"
      rescue => e
        # Gérer les erreurs lors de l'extraction du texte du PDF
        puts "Error extracting text from PDF: #{e.message}"
        @content = "Sorry, an error occurred while processing your request."
      end
    else
      # Si aucun fichier PDF n'est fourni, traiter la demande comme d'habitude
      chatgpt_response = client.chat(parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: "Give me a response like a doctor of #{prompt_content} with the student question #{user_question}" }]
      })
      @content = chatgpt_response["choices"][0]["message"]["content"]

      puts "ChatGPT Response: #{@content}"
    end

    respond_to do |format|
      format.html { render :home }
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace('response_partial', partial: 'shared/response', locals: { content: @content, user_question: user_question })
      end
    end
  end

  private

  # Méthode pour extraire le texte d'un fichier PDF
  def extract_text_from_pdf(file_path)
    pdf_text = ''
    PDF::Reader.open(file_path) do |reader|
      reader.pages.each do |page|
        pdf_text << page.text
      end
    end
    return pdf_text
  end
end
