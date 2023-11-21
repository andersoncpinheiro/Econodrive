class CarManufacturer < ApplicationRecord

    belongs_to :type_fuel, class_name: 'FuelRegister', foreign_key: 'type_fuel_id'
end
