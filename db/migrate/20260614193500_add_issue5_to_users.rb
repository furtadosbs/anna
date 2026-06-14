class AddIssue5ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue5, :boolean, default: false, null: false
  end
end
