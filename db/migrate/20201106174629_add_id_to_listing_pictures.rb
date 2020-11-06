class AddIdToListingPictures < ActiveRecord::Migration[6.0]
  def change
    add_column(:listing_pictures, :listing_id, :integer)
  end
end
