class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new(booking_params)
    @booking.skill = @skill
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "skills/show"
    end
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :date, :num_of_hours, :skill_id, :user_id)
  end
end
