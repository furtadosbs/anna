class AddIssue2ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue2, :boolean, default: false, null: false
  end
end
