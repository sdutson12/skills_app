class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :search]
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

  def search
    if params[:skill].present? || params[:location].present?
      search_skill = params[:skill] if params[:skill].present?
      search_location = params[:location] if params[:location].present?
      @skills = policy_scope(Skill).where(sport: search_skill, location: search_location)
    elsif params[:search]
      @skills = policy_scope(Skill).global_search(params[:search])
    end
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
