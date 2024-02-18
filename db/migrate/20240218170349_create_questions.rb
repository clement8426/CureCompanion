class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :response

      t.timestamps
    end
  end
end
