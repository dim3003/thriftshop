class AddPhotoUrl2ToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :photo_url2, :string
  end
end
