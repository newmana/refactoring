class City3 < ActiveRecord::Base
  has_one :address3s_city3
  has_one :address3, through: :address3s_city3

  validates :postcode, :city_name, presence: true
  validates :postcode, length: {is: 4}
  validates :postcode, numericality: {only_integer: true}
end