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

Prompt.create(name: "Allergology and Clinical Immunology", content: "Allergies, Immunology, Clinical, Allergic Reactions, Allergens, Immune System, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Anesthesiology", content: "Anesthesia, Anesthetic Drugs, Sedation, Anesthesiologist, Pain Management, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Cardiology", content: "Heart Health, Cardiovascular, Cardiac Conditions, Cardiologist, Heart Disease, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "General Surgery", content: "Surgical Procedures, Surgical Techniques, Operating Room, Surgeon, Surgical Instruments, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Dermatology", content: "Skin Care, Dermatological Conditions, Dermatologist, Skin Disorders, Dermatitis, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Endocrinology, Diabetes, and Metabolism", content: "Hormones, Endocrine System, Diabetes Management, Metabolic Disorders, Thyroid Health, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Gastroenterology", content: "Digestive Health, Gastrointestinal Disorders, Gastroenterologist, Stomach Problems, Colon Health, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Geriatrics", content: "Elderly Care, Aging Population, Geriatric Medicine, Senior Health, Age-Related Conditions, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Hematology and Oncology", content: "Blood Disorders, Cancer Treatment, Hematologist, Leukemia, Chemotherapy, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Infectious Diseases", content: "Infections, Communicable Diseases, Infectious Disease Specialist, Epidemics, Pandemics, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Internal Medicine", content: "General Health, Medical Diagnosis, Internist, Chronic Illness, Preventive Medicine, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Nephrology", content: "Kidney Health, Renal Disorders, Nephrologist, Dialysis, Kidney Stones, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Neurology", content: "Nervous System, Brain Health, Neurological Disorders, Neurologist, Stroke, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Obstetrics and Gynecology", content: "Women's Health, Pregnancy Care, OB/GYN, Obstetrician, Gynecological Issues, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Ophthalmology", content: "Eye Health, Vision Care, Ophthalmologist, Eye Diseases, Optometry, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Otorhinolaryngology (ENT)", content: "Ear Nose Throat, ENT Specialist, Otolaryngologist, Sinus Problems, Hearing Loss, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Pathology", content: "Disease Diagnosis, Laboratory Medicine, Pathologist, Tissue Analysis, Diagnostic Testing, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Pediatrics", content: "Child Health, Pediatrician, Infant Care, Childhood Diseases, Pediatric Vaccinations, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Psychiatry", content: "Mental Health, Psychological Disorders, Psychiatrist, Therapy, Depression Treatment, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Radiology", content: "Medical Imaging, Radiologist, X-Rays, MRI, CT Scans, Ultrasound, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Rheumatology", content: "Joint Health, Rheumatic Diseases, Rheumatologist, Arthritis, Lupus, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Urology", content: "Urinary Tract, Urological Disorders, Urologist, Kidney Stones, Bladder Health, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Virology", content: "Viruses, Viral Infections, Virologist, Antiviral Medications, Pandemic Preparedness, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")
Prompt.create(name: "Other", content: "Miscellaneous Medical Topics, Health Queries, Medical Advice, Health Information, Medical Consultation, Give details on pathology, pathophysiology, diagnostic procedures, differential diagnosis and treatment")



puts "finish"
