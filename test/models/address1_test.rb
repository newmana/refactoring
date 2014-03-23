require 'test_helper'

class Address1Test < ActiveSupport::TestCase
  test "validations" do
    address = Address1.new(street: "12 Smith Street", city_name: "Burpengary")
    assert address.valid?
  end

  test "set valid" do
    address = Address1.new(street: "12 Smith Street")
    address.city_name = "Enoggera"
    assert address.valid?
    assert address.postcode.eql?("4051")
  end

  test "invalid" do
    address = Address1.new(street: "12 Smith Street", city_name: "Beverly Hills")
    assert address.invalid?
  end
end