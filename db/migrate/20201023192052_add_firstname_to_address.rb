class AddFirstnameToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :Firstname, :string
  end
end
