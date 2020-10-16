class Api::V1::AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :update, :destroy]

  # для выполнения routes с ассоциацией
  def index
    if params[:job_id]
      @applies = Job.find(params[:job_id]).applies
    elsif params[:geek_id]
      @applies = Geek.find(params[:geek_id]).applies  # FIXME А что если будет и job_id и geek_id?
    else
      @applies = Apply.all
    end
    render json: { applies: @applies }, except: [:id, :created_at, :updated_at]
  end

  def show
    render json: @apply
  end

  def create
    @apply = Apply.new(apply_params)
    if @apply.save
      render json: @apply.as_json, status: :created
    else
      render json: { user: @apply.errors, status: :no_content }
    end
  end

  def update
    if @apply.update(apply_params)
      render json: @apply
    else
      render json: @apply.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @apply.deleted
      puts "deleted: "
      render json: { deleted_apply: [],
                     deleted_already: :not_modified,
      }
    else
      @apply.delete_apply
      render json: { deleted_apply: @apply,
                      code: 200,
                      status: :success,
      }, except: [:created_at, :updated_at]
    end
  end

  private

  def set_apply
    @apply = Apply.find(params[:id])
  end

  def apply_params
    params.permit(:job_id, :geek_id, :read, :invited)
  end

end
