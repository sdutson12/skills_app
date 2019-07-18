class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_skill, only: %i[show edit update destroy]

  def index
    @skills = policy_scope(Skill).all
  end

  def show
    authorize @skill
    @booking = Booking.new
  end

  def new
    @skill = Skill.new
    authorize @skill
  end

  def create
    @skill = Skill.new(skill_params)
    authorize @skill
    @skill.user = current_user
    raise
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @skill.update(skill_params)
      redirect_to skill_path(@skill)
    else
      render :edit
    end
  end

  def destroy
    @skill.destroy
    redirect_to skills_path
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :description, :sport, :price, :photo, :location)
  end

  def set_skill
    @skill = Skill.find(params[:id])
    authorize @skill
  end
end
