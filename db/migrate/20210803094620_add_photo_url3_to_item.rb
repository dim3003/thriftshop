class AddPhotoUrl3ToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :photo_url3, :string
  end
end
