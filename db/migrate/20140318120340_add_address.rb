class AddAddress < ActiveRecord::Migration
  def change
    create_table :address1 do |t|
      t.text :street
      t.text :city
      t.text :postcode, limit: 2
      t.text :state_name
    end

    create_table :address2 do |t|
      t.belongs_to :state
      t.text :street
      t.text :city
    end

    create_table :state2 do |t|
      t.text :postcode, limit: 2
      t.text :state_name
    end

    create_table :address3 do |t|
      t.text :street
      t.text :city
    end

    create_table :state3 do |t|
      t.text :postcode, limit: 2
      t.text :state_name
    end

    create_join_table :address3, :state3
  end
end
