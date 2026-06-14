class AddIssue14ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue14, :boolean, default: false, null: false
  end
end
