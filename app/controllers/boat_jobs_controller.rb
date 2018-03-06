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
    @boat = Boat.find(boat_job_params[:boat_id])
    @job = Job.find(boat_job_params[:job_id])
    @job.boats << @boat
    respond_to do |format|
      @type = params[:type]
      format.js
    end
  end

  def show
  end

  def destroy
  end

  private

  def boat_job_params
    params.require(:boat_job).permit(:boat_id, :job_id)
  end
end
