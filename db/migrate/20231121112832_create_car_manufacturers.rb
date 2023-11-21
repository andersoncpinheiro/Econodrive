class CreateCarManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :car_manufacturers do |t|
      t.string :manufacturer
      t.string :car_model
      t.string :year
      t.string :capacity
      t.integer :type_fuel_id
      t.string :reported_consumption
      t.datetime :deleted_at

      t.timestamps
    end

    add_foreign_key :car_manufacturers, :fuel_registers, column: :type_fuel_id
  end
end
