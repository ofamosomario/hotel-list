class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # ENUMS

  enum role: {
  	'owner': 0,
  	'guest': 1,
  }

  # MAPS

  has_many :hotels, dependent: :destroy

end
