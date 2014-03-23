class Address1 < ActiveRecord::Base
  validates :street, :city_name, :postcode, presence: true
  validates :postcode, length: {is: 4}
  validates :postcode, numericality: {only_integer: true}
  attr_readonly :postcode

  CITY_POSTCODE = {"Burpengary" => "4505", "Enoggera" => "4051"}

  def city_name=(name)
    if CITY_POSTCODE.key?(name)
      self[:postcode] = CITY_POSTCODE[name]
      self[:city_name] = name
    end
  end
end