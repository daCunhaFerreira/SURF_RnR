class BookingsController < ApplicationController

  def new
    @surfboard = Surfboard.find(params[:surfboard_id])
    @booking = Booking.new
  end

  def create
    @surfboard = Surfboard.find(params[:surfboard_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.surfboard = @surfboard
    if @booking.save
      redirect_to my_bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_bookings
    @my_bookings = Booking.all.where(user: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
