class City3 < ActiveRecord::Base
  validates :postcode, :city_name, presence: true
  validates :postcode, length: {is: 4}
  validates :postcode, numericality: {only_integer: true}
end