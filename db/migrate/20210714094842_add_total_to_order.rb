class AddTotalToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :total, :string
  end
end
