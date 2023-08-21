class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path(@offer)
    else
      render :new, status: :unprocessable_entitiy
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:date, :price, :description, :status, :user_id, :title, :localisation, :profession, :experience)
  end
end
