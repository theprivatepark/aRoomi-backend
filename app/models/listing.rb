class Listing < ApplicationRecord
  belongs_to :college
  has_many :users
end
