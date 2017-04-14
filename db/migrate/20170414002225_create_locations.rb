class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :location_manager
    end
  end
end
