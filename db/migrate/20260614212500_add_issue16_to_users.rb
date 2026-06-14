class AddIssue16ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue16, :boolean, default: false, null: false
  end
end
