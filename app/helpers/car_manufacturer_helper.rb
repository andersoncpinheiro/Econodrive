module CarManufacturerHelper
    def car_manufacturer_form(car_manufacturer)
        render partial: 'car_manufacturer/form', locals: { car_manufacturer: car_manufacturer }
      end
end
