class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new(booking_params)
    @skill = @booking.skill
    if @booking.save
      redirect_to skill_path(@skill)
    else
      render "skills/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, skill_id, :user_id)
  end
end
