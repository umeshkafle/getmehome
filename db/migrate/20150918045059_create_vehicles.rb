class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_no
      t.string :license_no
      t.text :vechicle_description
      t.string :owner_name
      t.text :owner_address
      t.string :owner_contact

      t.timestamps null: false
    end
  end
end
