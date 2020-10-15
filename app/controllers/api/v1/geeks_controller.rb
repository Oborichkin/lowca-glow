class Api::V1::GeeksController < ApplicationController
  before_action :set_geek, only: [:show, :update, :destroy]

  # для выполнения routes с ассоциацией
  def index
    @geeks = Geek.all
    render json: { geeks: @geeks }, except: [:id, :created_at, :updated_at]
  end

  def show
    render json: @geek
  end

  # TODO: ADD CREATE
  # TODO: ADD UPDATE

  private

  def set_geek
    @geek = Geek.find(params[:id])
  end

  def geek_params
    params.permit(:name, :stack, :cv)
  end

end
