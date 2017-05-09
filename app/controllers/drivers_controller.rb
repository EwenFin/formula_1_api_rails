class DriversController < ApplicationController

  def index
    drivers = Driver.all
    render json: drivers
  end

  def show
    driver = Driver.find(params[:id])
    render json: driver
  end

  def create
    driver = Driver.create({
      name: params[:name],
      rank: params[:rank],
      age: params[:age]
      })
    render json: driver
  end
end