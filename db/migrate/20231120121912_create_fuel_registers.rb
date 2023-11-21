class CreateFuelRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :fuel_registers do |t|
      t.string :type_fuel
      t.string :value_liter
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
