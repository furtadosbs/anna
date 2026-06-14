class AddIssue20ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue20, :boolean, default: false, null: false
  end
end
