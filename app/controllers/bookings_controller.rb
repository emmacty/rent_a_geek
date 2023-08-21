class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:offer_id, :user_id)
  end
end
