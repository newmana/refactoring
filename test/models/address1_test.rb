require 'test_helper'

class Address1Test < ActiveSupport::TestCase
  test "validations" do
    address = Address1.new(street: "12 Smith Street", city_name: "Burpengary")
    assert address.postcode.eql?("4505")
    assert address.valid?
  end

  test "set valid" do
    address = Address1.new(street: "12 Smith Street", city_name: "Burpengary")
    assert address.postcode.eql?("4505")
    address.city_name = "Enoggera"
    assert address.postcode.eql?("4051")
    assert address.valid?
  end

  test "can't access postcode" do
    address = Address1.create(street: "12 Smith Street", city_name: "Burpengary")
    address.postcode = "1234"
    assert address.postcode.eql?("1234")
    address.save
    assert address.reload.postcode.eql?("4505")
  end

  test "invalid" do
    address = Address1.new(street: "12 Smith Street", city_name: "Beverly Hills")
    assert address.invalid?
  end
end