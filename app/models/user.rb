class User < ApplicationRecord
  belongs_to :listing, required: false
  has_secure_password

  # token = e20be2982973fdbccaf8865811b1de3eea3598ef



end
