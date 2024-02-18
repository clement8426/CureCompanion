class CreatePrompts < ActiveRecord::Migration[7.1]
  def change
    create_table :prompts do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
