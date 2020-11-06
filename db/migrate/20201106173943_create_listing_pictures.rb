class CreateListingPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :listing_pictures do |t|
      t.string :img_url

      t.timestamps
    end
  end
end
