class DealsController < ApplicationController

  def index
    deals = Deal.where({team: params[:team_id]})
    render json: deals
  end

  def show
    deal = Deal.find(params[:id])
    render json: deal
  end

  def create
    deal = Deal.create({
      name: params[:name],
      rank: params[:rank],
      age: params[:age]
      })
    render json: deal
  end
end