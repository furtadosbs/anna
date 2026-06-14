class AddIssue6ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue6, :boolean, default: false, null: false
  end
end
