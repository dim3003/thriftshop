class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :number
      t.string :name
      t.string :firstname
      t.string :email
      t.string :street
      t.integer :postalCode
      t.string :city
      t.string :purchase

      t.timestamps
    end
  end
end
