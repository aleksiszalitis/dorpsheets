# frozen_string_literal: true

class SportsController < ApplicationController

  before_action :set_sport, only: %i[show edit update destroy]

  def index
    @sports = Sport.order(:name)
  end

  def show

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(create_params)
    if @sport.save
      redirect_to sport_path(@sport)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @sport.update(update_params)
      redirect_to sport_path(@sport)
    else
      render :edit
    end
  end

  def destroy
    if @sport.destroy
      redirect_to sports_path
    else
      redirect_to sport_path(@sport)
    end
  end

  private

  def set_sport
    @sport = Sport.find(params[:id])
  end

  def create_params
    params.require(:sport).permit(:name)
  end

  def update_params
    create_params
  end

end
