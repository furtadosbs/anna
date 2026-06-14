class AddIssue10ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue10, :boolean, default: false, null: false
  end
end
