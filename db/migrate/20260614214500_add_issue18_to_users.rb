class AddIssue18ToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :issue18, :boolean, default: false, null: false
  end
end
