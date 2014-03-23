class AddAddress < ActiveRecord::Migration
  def change
    create_table :address1s do |t|
      t.text :street
      t.text :postcode, limit: 2
      t.text :city_name
    end

    create_table :address2s do |t|
      t.belongs_to :city2
      t.text :street
    end

    create_table :city2s do |t|
      t.text :city_name
      t.text :postcode, limit: 2
    end

    create_table :address3s do |t|
      t.text :street
    end

    create_table :city3s do |t|
      t.text :postcode, limit: 2
      t.text :city_name
    end

    create_join_table :address3s, :state3s
  end
end
