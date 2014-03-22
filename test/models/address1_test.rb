require 'test_helper'

class Address1Test < ActiveSupport::TestCase
  test "validations" do
    thing = Address1.new(street: "12 Smith Street", postcode: "4505", city_name: "Burpengary")
    assert thing.valid?
  end

  test "invalid" do
    thing = Address1.new(street: "12 Smith Street", postcode: "90210", city_name: "Beverly Hills")
    assert thing.invalid?
  end
end