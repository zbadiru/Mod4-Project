class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update]

  def index
    @phones = Phone.all
    render json: @phones
  end

  def show
    render json: @phone
  end

  def new
  end

  def create
    @phone = Phone.new(phone_params)

    if @phone.save
      render json: @phone, status: :created, location: @phone
    else
      render json: @phone.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @phone.update(phone_params)
    render json: @phone
  end

  private
  def set_phone
    @phone = Phone.find(params[:id])
  end

  def phone_params
    params.require(:phone).permit(:name, :price)
  end
end
