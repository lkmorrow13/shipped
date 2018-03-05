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
    @boat = current_user.boats.new(boat_params)
    respond_to do |format|
      if @boat.save
        format.html{ redirect_to @boat }

        format.js
      end
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def destroy
    @boat = current_user.boats.find(params[:id])
    respond_to do |format|
      if @boat.destroy
        format.html{ redirect_to new_boat_path }
        format.js
      end
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:user_id, :containers, :location, :name)
  end
end
