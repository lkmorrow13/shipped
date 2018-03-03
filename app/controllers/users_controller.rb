class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@jobs = Job.all
  	@boats = Boat.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :bio)
  end
end
