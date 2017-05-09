class ContractsController < ApplicationController

  def index
    contracts = Contract.all
    render json: contracts.as_json({
      only: [:value],
      include: {
        team: {
          only: [:name]
          },
        driver: {
          only: [:name, :rank]
        }
        }
      
      })

  end

  def show
    contract = Contract.find(params[:id])
    render json: contract
  end
end