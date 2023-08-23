class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @my_geeks = current_user.bookings
    @my_missions = current_user.missions
  end

  def create_booking
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(offer_id: @offer.id, user_id: current_user.id)
    if @booking.save
      redirect_to offer_path(@offer), notice: "🎉 You just booked #{ @offer.user.first_name }"
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

end
