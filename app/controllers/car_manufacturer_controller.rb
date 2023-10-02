class CarManufacturerController < ApplicationController
  def new
    @car_manufacturer = CarManufacturer.new
  end

  def show;end

  def edit
    @car_manufacturer = CarManufacturer.find(params[:id])
  end

  def create
    binding.pry
    @car_manufacturer = CarManufacturer.new(car_manufacturer_params)

    respond_to do |format|
      if @car_manufacturer.save
        format.html { redirect_to categories_url(@car_manufacturer), notice: "Manufacturer was successfully created." }
        format.json { render :show, status: :created, location: @car_manufacturer }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

def car_manufacturer_params
  params.require(:car_manufacturer).permit(:manufacturer, :car_model)
end
end