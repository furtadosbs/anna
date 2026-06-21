class AddValueToOptions < ActiveRecord::Migration[8.1]
  def change
    add_column :options, :value, :string
  end
end
