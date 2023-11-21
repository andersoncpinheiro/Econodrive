class CarManufacturersController < ApplicationController

  before_action :set_car_manufacturer, only: [:show, :edit, :update, :destroy]
  
  def index
    @car_manufacturer = CarManufacturer.all
  end
  
  def new
    @car_manufacturer = CarManufacturer.new
    @fuel_registers = FuelRegister.all
  end

  def show;end

  def edit
    @car_manufacturer = CarManufacturer.find(params[:id])
    @fuel_registers = FuelRegister.all
  end

  def create
    binding.pry
    @car_manufacturer = CarManufacturer.new(car_manufacturer_params)
    @fuel_registers = FuelRegister.all

    respond_to do |format|
      if @car_manufacturer.save
        format.html { redirect_to car_manufacturers_url(@car_manufacturer), notice: "Manufacturer was successfully created." }
        format.json { render :show, status: :created, location: @car_manufacturer }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    @car_manufacturer = CarManufacturer.find(params[:id])
    @fuel_registers = FuelRegister.all
    if @car_manufacturer.update(car_manufacturer_params)
      redirect_to @car_manufacturer, notice: 'Car Manufaturer type was succesfully updated.'
    else
      puts @car_manufacturer.errors.full_messages
      render :edit      
    end
  end

  def destroy
    if @car_manufacturer.destroy
  
      respond_to do |format|
        format.html { redirect_to car_manufacturers_url(@car_manufacturer), notice: "Fuel was successfully destroyed." }
        format.json { head :no_content }
        end
      else
        redirect_to car_manufacturers_url, alert: @car_manufacturer.errors.messages[:base][0]
      end
    end

  private

  def set_car_manufacturer
    @car_manufacturer = CarManufacturer.find(params[:id])
  end

  def car_manufacturer_params
  params.require(:car_manufacturer).permit(:manufacturer, :car_model, :year, :capacity, :type_fuel_id, :reported_consumption)
end 
end