require 'test_helper'

describe Address1 do
  describe "with new" do
    let(:address) { Address1.new(street: "12 Smith Street", city_name: "Burpengary") }
    it { address.postcode.must_equal "4505" }
    it { address.valid?.must_equal true }

    it "can access postcode" do
      address.postcode = "1234"
      address.save(reload: true)
      address.postcode.must_equal "1234"
      address.valid?.must_equal true
    end
  end

  describe "with create" do
    let(:address) { Address1.create(street: "12 Smith Street", city_name: "Burpengary") }
    it { address.postcode.must_equal "4505" }

    it "set valid" do
      address.city_name = "Enoggera"
      address.postcode.must_equal "4051"
      address.save(reload: true)
      address.postcode.must_equal "4051"
      address.valid?.must_equal true
    end

    it "can't sorta access postcode with create" do
      address.postcode = "1234"
      address.postcode.must_equal "1234"
      address.reload.postcode.must_equal "4505"
      address.valid?.must_equal true
    end
  end

  describe "with new" do
    let(:address) { Address1.new(street: "12 Smith Street", city_name: "Beverly Hills") }
    it { address.invalid?.must_equal true }
  end
end