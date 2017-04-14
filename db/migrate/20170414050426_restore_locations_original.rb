class RestoreLocationsOriginal < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up { t.remove :city, :string }
        dir.up { t.remove :weather, :string }
        dir.up { t.string :name }
        dir.up { t.string :address }
        dir.up { t.integer :phone_number }
        dir.up { t.string :location_manager }

        dir.down { t.remove :name, :string }
        dir.down { t.remove :address, :string }
        dir.down { t.remove :phone_number, :integer }
        dir.down { t.remove :location_manager, :string }
        dir.down { t.string :city }
        dir.down { t.string :weather }
      end
    end
  end
end
