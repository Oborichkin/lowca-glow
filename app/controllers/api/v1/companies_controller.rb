class Api::V1::CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :update, :destroy]

  # для выполнения routes с ассоциацией
  def index
    @companies = Company.all
    render json: { companies: @companies }, except: [:id, :created_at, :updated_at]
  end

  def show
    render json: @company
  end

  # TODO: ADD CREATE
  # TODO: ADD UPDATE

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.permit(:name, :location)
  end

end
