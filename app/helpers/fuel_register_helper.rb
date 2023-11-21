module FuelRegisterHelper
    def fuel_register_form(fuel_register)
        render partial: 'fuel_register/form', locals: { fuel_register: fuel_register }
      end
end
