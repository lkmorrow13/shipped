class BoatsController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def show
  end

  def destroy
  end

  private

  def boat_params
    params.require(:boat).permit(:user_id, :containers, :location, :name)
  end
end
