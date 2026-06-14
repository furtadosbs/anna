class AddIssue13ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue13, :boolean, default: false, null: false
  end
end
