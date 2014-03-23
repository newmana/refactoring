class Address3 < ActiveRecord::Base
  has_one :address3s_city3
  has_one :city3, through: :address3s_city3

  validates :street, :postcode, :city_name, presence: true
  delegate :city_name, :city_name=, :postcode, to: :city3, allow_nil: false

  def city_name=(name)
    city = City3.where(city_name: name).first
    self.city3 = city if city
  end
end