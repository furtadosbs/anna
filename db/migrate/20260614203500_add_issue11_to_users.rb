class AddIssue11ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue11, :boolean, default: false, null: false
  end
end
