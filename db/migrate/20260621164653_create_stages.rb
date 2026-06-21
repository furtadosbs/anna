class CreateStages < ActiveRecord::Migration[8.1]
  def change
    create_table :stages do |t|
      t.string :title

      t.timestamps
    end
  end
end
