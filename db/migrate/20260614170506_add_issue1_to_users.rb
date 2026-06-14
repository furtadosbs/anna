class AddIssue1ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue1, :boolean, default: false, null: false
  end
end
