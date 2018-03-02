class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def edit
    @boat = current_user.boats.find(params[:id])
  end

  def update
    @boat = current_user.boats.find(params[:id])
    @boat.update_attributes(job_params)
    redirect_to @boat
  end

  def create
    @boat = current_user.boats.new(job_params)
    if @boat.save
      redirect_to @boat
    else
      
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def destroy
    current_user.boats.find(params[:id]).destroy
    redirect_to new_boat_path
  end

  private

  def boat_params
    params.require(:boat).permit(:user_id, :containers, :location, :name)
  end
end
