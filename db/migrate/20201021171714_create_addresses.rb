class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street
      t.integer :postalCode

      t.timestamps
    end
  end
end
