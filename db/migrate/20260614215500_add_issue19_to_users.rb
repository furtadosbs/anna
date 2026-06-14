class AddIssue19ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue19, :boolean, default: false, null: false
  end
end
