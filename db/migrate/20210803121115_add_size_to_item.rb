class AddSizeToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :size, :string
  end
end
