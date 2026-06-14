class AddIssue17ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue17, :boolean, default: false, null: false
  end
end
