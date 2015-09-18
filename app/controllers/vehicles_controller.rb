class VehiclesController < ApplicationController
  def index
    @request = Request.find(params[:request_id])
    @vehicles = @request.vehicles
  end

  def show
    @request = Request.find(params[:request_id])
    @vehicle = @request.vehicles.find(params[:id])
  end

  def new
    @request = Request.find(params[:request_id])
    @vehicle = @request.vehicles.new
  end

  def create
    @request = Request.find(params[:request_id])
    @vehicles = @request.vehicles.new(vehicles_params)
    if @request.save
      redirect_to requests_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def vehicles_params
    params.require(:vehicle).permit(:vehicle_no, :license_no, :vechicle_description, :owner_name, :owner_address, :owner_contact)
  end
end
