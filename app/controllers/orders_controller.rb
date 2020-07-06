class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def show
    render json: @order
  end

  def new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @order.update(order_params)
    render json: @order
  end

  def destroy
    @order = order.destory
    render json: @order
  end

  private 

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id)
  end 

end
