class City2 < ActiveRecord::Base
  has_one :address2

  validates :postcode, :city_name, presence: true
  validates :postcode, length: {is: 4}
  validates :postcode, numericality: {only_integer: true}
end