class FuelRegistersController < ApplicationController
  before_action :set_fuel_register, only: [:show, :edit, :update, :destroy]

  def index
    @fuel_register = FuelRegister.all
  end
  def new
    @fuel_register = FuelRegister.new
  end

  def show;end

  def edit
  end

  def create
    @fuel_register = FuelRegister.new(fuel_register_params)

    respond_to do |format|
      if @fuel_register.save
        format.html { redirect_to fuel_registers_url(@fuel_register), notice: "Fuel Type was successfully created." }
        format.json { render :show, status: :created, location: @fuel_register }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @fuel_register.update(fuel_register_params)
      redirect_to @fuel_register, notice: 'Fuel type was succesfully updated.'
    else
      render :edit      
    end
  end

  def destroy
    if @fuel_register.destroy
  
      respond_to do |format|
        format.html { redirect_to fuel_registers_url(@fuel_register), notice: "Fuel was successfully destroyed." }
        format.json { head :no_content }
        end
      else
        redirect_to fuel_registers_url, alert: @fuel_register.errors.messages[:base][0]
      end
    end

  private

def set_fuel_register
    @fuel_register = FuelRegister.find(params[:id])
end

def fuel_register_params
  params.require(:fuel_register).permit(:type_fuel, :value_liter)
end

end