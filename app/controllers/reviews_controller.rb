class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to skill_path(@booking.skill)
    else
      render :new
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars, :title, :booking_id)
  end
end
