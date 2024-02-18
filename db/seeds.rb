# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Prompt.destroy_all

Prompt.create(name: "Allergoologie et immunologie clinique", content: "Ask me anything about allergies and clinical immunology.")
Prompt.create(name: "Anesthésiologie", content: "Questions about anesthesia? I'm here to help!")
Prompt.create(name: "Cardiologie", content: "Heart health matters. Feel free to ask me anything about cardiology.")
Prompt.create(name: "Chirurgie générale", content: "General surgery can be complex. Let's discuss any questions you have.")
Prompt.create(name: "Dermatologie", content: "Concerns about your skin? Ask me anything about dermatology.")
Prompt.create(name: "Endocrinologie, diabète et métabolisme", content: "Let's talk about hormones, diabetes, and metabolism.")
Prompt.create(name: "Gastro-entérologie", content: "Issues with your digestive system? Ask me anything about gastroenterology.")
Prompt.create(name: "Gériatrie", content: "Caring for the elderly? I'm here to provide guidance on geriatrics.")
Prompt.create(name: "Hématologie et oncologie", content: "Questions about blood disorders or cancer? Let's discuss.")
Prompt.create(name: "Infectiologie", content: "Concerns about infectious diseases? Ask me anything.")
Prompt.create(name: "Médecine interne", content: "General health questions? Feel free to ask me anything about internal medicine.")
Prompt.create(name: "Néphrologie", content: "Kidney health is crucial. Let's discuss nephrology.")
Prompt.create(name: "Neurologie", content: "Nervous system issues? Ask me anything about neurology.")
Prompt.create(name: "Obstétrique et gynécologie", content: "Women's health is important. Let's talk about OB/GYN topics.")
Prompt.create(name: "Ophtalmologie", content: "Concerns about your eyes? Ask me anything about ophthalmology.")
Prompt.create(name: "Oto-rhino-laryngologie (ORL)", content: "Issues with your ears, nose, or throat? Let's discuss ORL topics.")
Prompt.create(name: "Pathologie", content: "Curious about diseases and their effects? Ask me anything about pathology.")
Prompt.create(name: "Pédiatrie", content: "Questions about child health? I'm here to provide pediatric insights.")
Prompt.create(name: "Psychiatrie", content: "Mental health is important. Let's discuss psychiatry.")
Prompt.create(name: "Radiologie", content: "Questions about medical imaging? I'm here to provide insights on radiology.")
Prompt.create(name: "Rhumatologie", content: "Joint and musculoskeletal issues? Let's discuss rheumatology.")
Prompt.create(name: "Urologie", content: "Concerns about the urinary system? Ask me anything about urology.")
Prompt.create(name: "Virologie", content: "Curious about viruses? Ask me anything about virology.")
Prompt.create(name: "Autre", content: "Questions about other medical topics? Feel free to ask me anything.")

puts "finish"
