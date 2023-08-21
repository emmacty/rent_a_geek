class OffersController < ApplicationController
  def index
    @offer = Offer.all
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    offer = Offer.new(offer_params)
    offer.save
    redirect_to offers_path(@offer)
  end

  private

  def offer_params
    params.require(:offer).permit(:date, :price, :description, :status, :user_id, :title, :localisation, :profession, :experience)
  end
end
