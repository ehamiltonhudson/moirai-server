class Api::V1::ArcanasController < ApplicationController
  before_action :set_arcana, only: [:show, :update, :destroy]

  # GET /arcanas
  def index
    @arcanas = Arcana.all

    render json: @arcanas
  end

  # GET /arcanas/1
  def show
    render json: @arcana
  end

  # POST /arcanas
  def create
    @arcana = Arcana.new(arcana_params)

    if @arcana.save
      render json: @arcana, status: :created, location: @arcana
    else
      render json: @arcana.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arcanas/1
  def update
    if @arcana.update(arcana_params)
      render json: @arcana
    else
      render json: @arcana.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arcanas/1
  def destroy
    @arcana.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arcana
      @arcana = Arcana.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arcana_params
      params.require(:arcana).permit(:key, :count, :deck_id)
    end
end
