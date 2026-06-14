class AddIssue9ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue9, :boolean, default: false, null: false
  end
end
