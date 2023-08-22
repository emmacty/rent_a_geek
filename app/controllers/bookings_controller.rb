class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def just_booked
    @offer = Offer.find(params[:offer_id])
  end

  def create_booking
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(offer_id: @offer.id, user_id: current_user.id)
    if @booking.save
      redirect_to offer_just_booked_path(@offer)
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

end
