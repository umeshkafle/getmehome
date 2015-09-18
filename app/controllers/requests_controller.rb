class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to requests_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @request = Request.find(params[:id])
    if @request.destroy
      redirect_to requests_path
    end

  end

  def request_params
    params.require(:request).permit(:name, :loaction, :destination, :contact, :age)
  end
end
