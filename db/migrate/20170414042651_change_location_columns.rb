class ChangeLocationColumns < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up { t.remove :name, :string }
        dir.up { t.remove :address, :string }
        dir.up { t.remove :phone_number, :integer }
        dir.up { t.remove :location_manager, :string }
        dir.up { t.string :city }
        dir.up { t.string :weather }

        dir.down { t.remove :city, :string }
        dir.down { t.remove :weather, :string }
        dir.down { t.string :name }
        dir.down { t.string :address }
        dir.down { t.integer :phone_number }
        dir.down { t.string :location_manager }
      end
    end
  end
end


# t.string :name
# t.string :address
# t.integer :phone_number
# t.string :location_manager
