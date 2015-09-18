class VehiclesController < ApplicationController
  def index
    @request = Request.find(params[:request_id])
    @vehicles = @request.vehicles
  end

  def show
    @request = Request.find(params[:request_id])
    @vehicles = @request.vehicles
  end

  def new
    @request = Request.find(params[:request_id])
    @vehicle = @request.vehicles.new
  end

  def create
    @request = Request.find(params[:request_id])
    @vehicles = @request.vehicles.new(vehicles_params)
    if @request.save
      redirect_to request_vehicles_path(request_id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def vehicles_params
    params.require(:vehicle).permit(:vehicle_no, :license_no, :vehicle_description, :owner_name, :owner_address, :owner_contact)
  end
end
