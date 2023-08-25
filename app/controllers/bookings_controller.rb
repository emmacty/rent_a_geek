class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @my_geeks = current_user.bookings.order(created_at: :desc)
    @my_missions = current_user.missions.order(created_at: :desc)
  end

  def create_booking
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(offer_id: @offer.id, user_id: current_user.id)
    if @booking.save
      redirect_to offer_path(@offer), notice: "🎉 You just booked #{@offer.user.first_name}"
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.accepted = true
    @booking.save
    flash[:notice] = "Congrats, you accepted a new mission! 🎉"
    redirect_to bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.declined = true
    @booking.save
    flash[:alert] = "You just declined a mission."
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:alert] = "Successfully cancelled!"
    redirect_to bookings_path, status: :see_other
  end
end
