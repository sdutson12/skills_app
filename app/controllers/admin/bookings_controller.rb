class Admin::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    raise
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
