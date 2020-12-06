class Api::V2::AppartmentsController < ApplicationController
  def index
    render json: Appartment.all
  end

  def show
    render json: Appartment.find(params[:id])
  end
end
