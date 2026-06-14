class AddIssue15ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue15, :boolean, default: false, null: false
  end
end
