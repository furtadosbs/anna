class CreateQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :questions do |t|
      t.string :description
      t.references :stage, null: false, foreign_key: true
      t.string :correct_value

      t.timestamps
    end
  end
end
