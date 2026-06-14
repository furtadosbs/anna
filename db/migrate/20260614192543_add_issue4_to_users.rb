class AddIssue4ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue4, :boolean, default: false, null: false
  end
end
