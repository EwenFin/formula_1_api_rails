class SponsorsController < ApplicationController

  def index
    sponsors = Sponsor.all
    render json: sponsors
  end

  def show
    sponsor = Sponsor.find(params[:id])
    render json: sponsor
  end

  def create
    sponsor = Sponsor.create({
      name: params[:name],
      market: params[:market],
      logo: params[:logo]
      })
    render json: sponsor
  end
end