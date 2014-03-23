class Address2 < ActiveRecord::Base
  belongs_to :city2

  validates :street, :postcode, :city_name, presence: true
  delegate :city_name, :city_name=, :postcode, to: :city2, allow_nil: false

  def city_name=(name)
    city = City2.where(city_name: name).first
    self.city2 = city if city
  end
end