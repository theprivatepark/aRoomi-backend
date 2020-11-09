class Listing < ApplicationRecord
  belongs_to :college
  has_many :users
  has_many :listing_pictures
end
