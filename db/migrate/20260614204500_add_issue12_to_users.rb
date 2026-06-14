class AddIssue12ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue12, :boolean, default: false, null: false
  end
end
