class Address4 < ActiveRecord::Base
  has_many :address4s_city4
  has_many :city4, through: :address4s_city4

  validates :street, :postcode, :city_name, presence: true
  delegate :city_name, :city_name=, :postcode, to: :city4, allow_nil: false

  def city_name=(name)
    city = City4.where(city_name: name).first
    if city
      self.city4 = []
      self.city4 << city
    end
  end

  def city_name
    self.city4.first.nil? ? raise('No city') : self.city4.first.city_name
  end

  def postcode
    self.city4.first.postcode if self.city4.first
  end
end