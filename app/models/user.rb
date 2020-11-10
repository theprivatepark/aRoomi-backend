class User < ApplicationRecord
  belongs_to :listing, required: false
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true

  # token = e20be2982973fdbccaf8865811b1de3eea3598ef



end
