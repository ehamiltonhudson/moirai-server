class Api::V1::DecksController < ApplicationController
  before_action :find_deck, only: [:show, :update, :destroy]

  # GET /decks
  def index
    @decks = Deck.all

    render json: @decks, status: 200
  end

  # GET /decks/1
  def show
    render json: @deck, status: 200
  end

  # POST /decks
  def create
    @deck = Deck.new(deck_params)

    if @deck.save
      render json: @deck, status: :created, location: @deck, status: 200
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /decks/1
  def update
    # if @deck.update(deck_params)
    @deck.update(deck_params)
    if @deck.valid?
      @deck.save
      render json: @deck, status: 200
    else
      render json: @deck.errors, status: :unprocessable_entity
    end
  end

  # DELETE /decks/1
  def destroy
    @deck.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_deck
      @deck = Deck.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deck_params
      params.require(:deck).permit(:count, :shuffled)
    end
end
