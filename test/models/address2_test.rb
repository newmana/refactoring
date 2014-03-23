require 'test_helper'

class Address2Test < ActiveSupport::TestCase
  test "validations" do
    address = Address2.new(street: "12 Smith Street", city_name: "Burpengary")
    assert address.valid?
  end

  test "set valid" do
    address = Address2.new(street: "12 Smith Street", city2: city2(:burp))
    address.city_name = "Enoggera"
    assert address.postcode.eql?("4051")
    assert address.valid?
  end

  test "invalid" do
    # Can't do
    # address = Address2.new(street: "12 Smith Street", city_name: "Beverly Hills")
    # assert address.invalid?
    assert_raise RuntimeError do
      Address2.new(street: "12 Smith Street", city_name: "Beverly Hills").invalid?
    end
  end

  test "validations with fixture" do
    address = Address2.new(street: "12 Smith Street", city2: city2(:burp))
    address.postcode.eql?("4505")
    assert address.valid?
  end

end