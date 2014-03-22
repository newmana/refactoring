class AddAddress < ActiveRecord::Migration
  def change
    t.text :street
    t.text :city
    t.text :postcode, limit: 2
    t.text :state_name
  end
end
