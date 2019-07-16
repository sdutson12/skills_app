class Admin::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(current_user.bookings)
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
