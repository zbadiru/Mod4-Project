class JoinTablesController < ApplicationController
  before_action :set_join_table, only: [:show, :edit, :update]

  def index
    @join_tables = JoinTable.all
    render json: @join_tables
  end

  def show
    render json: @join_table
  end

  def new
  end

  def create
    @join_table = JoinTable.new(join_table_params)

    if @join_table.save 
      render json: @join_table, status: :created, location: @join_table
    else
      render json: @join_table, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @join_table.update(join_table_params)
    render json: @join_table
  end

  private
  def set_join_table
    @join_table = JoinTable.find(params[:id])
  end
  def join_table_params
    params.require(:join_table).permit(:order_id, :phone_id)
  end
end
