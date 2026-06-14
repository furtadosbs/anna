class AddIssue8ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue8, :boolean, default: false, null: false
  end
end
