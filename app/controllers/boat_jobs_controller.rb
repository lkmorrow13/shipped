class BoatJobsController < ApplicationController
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

  def boat_jobs_params
    params.require(:boat_jobs).permit(:user_id, :job_id)
  end
end
