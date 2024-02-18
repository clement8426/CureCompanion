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

    # Envoyer la question à ChatGPT
    client = OpenAI::Client.new
    chatgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: "Give me a response like a doctor of #{prompt_content} with the student question #{user_question}" }]
    })

    @content = chatgpt_response["choices"][0]["message"]["content"]

    # Afficher la réponse de ChatGPT
    puts "ChatGPT Response: #{@content}"

    render :home
  end
end
