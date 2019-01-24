class Hotel < ApplicationRecord

	# VALIDATIONS
	validates_length_of :price, allow_blank: false
	validates_length_of :name, minimum: 5, maximum: 255, allow_blank: false
	validates_length_of :location, maximum: 255, allow_blank: false

	# MAPS
	belongs_to :user

  has_many :facilities, inverse_of: :hotel
  accepts_nested_attributes_for :facilities, reject_if: :all_blank, allow_destroy: true	

end