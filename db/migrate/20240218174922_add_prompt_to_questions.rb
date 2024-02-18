class AddPromptToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_reference :questions, :prompt, null: false, foreign_key: true
  end
end
