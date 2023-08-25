class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  def index
    @offers = Offer.all
    if params[:query].present?
      @offers = @offers.global_search(params[:query])
    end
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {offer: offer}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
      flash[:alert] = "Successfully edited!"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @offer.destroy
    @offer.bookings.destroy_all
    @offer.destroy
    redirect_to offers_path, status: :see_other
  end


  def my_offers
    @my_offers = current_user.offers
  end

  private

  def offer_params
    params.require(:offer).permit(:date, :price, :description, :title, :localisation, :profession, :experience)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
