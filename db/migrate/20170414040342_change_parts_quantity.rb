class ChangePartsQuantity < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :parts do |t|
        dir.up { t.change :quantity, :decimal }
        dir.down { t.change :quantity, :integer }
      end
    end
  end
end
