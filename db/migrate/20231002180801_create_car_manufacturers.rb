class CreateCarManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :car_manufacturers do |t|
      t.string :manufacturer
      t.string :car_model

      t.timestamps
    end
  end
end
