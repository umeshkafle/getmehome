class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :location
      t.string :destination
      t.string :contact
      t.integer :age

      t.timestamps null: false
    end
  end
end
