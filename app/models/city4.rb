class City4 < ActiveRecord::Base
  has_one :address4s_city4
  has_one :address4, through: :address4s_city4

  validates :postcode, :city_name, presence: true
  validates :postcode, length: {is: 4}
  validates :postcode, numericality: {only_integer: true}
end