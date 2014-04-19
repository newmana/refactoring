require 'test_helper'

describe Address3 do
  describe "with new" do
    let(:address) { Address3.new(street: "12 Smith Street", city_name: "Burpengary") }
    it { address.postcode.must_equal "4505" }
    it { address.valid?.must_equal true }
  end

  describe "with create" do
    let(:address) { Address3.new(street: "12 Smith Street", city3: city3(:burp)) }
    it { address.postcode.must_equal "4505" }

    it "set valid" do
      address.city_name = "Enoggera"
      address.postcode.must_equal "4051"
      address.save(reload: true)
      address.postcode.must_equal "4051"
      address.valid?.must_equal true
    end

    it "can't sorta access postcode with create" do
      Proc.new{address.postcode = "1234"}.must_raise NoMethodError
    end
  end

  describe "with new" do
    let(:address) { Address3.new(street: "12 Smith Street", city_name: "Beverly Hills") }

    it "invalid" do
      Proc.new{address.invalid?}.must_raise RuntimeError
    end
  end
end