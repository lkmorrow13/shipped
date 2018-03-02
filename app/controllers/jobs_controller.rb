class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to @job
  end

  def create
    @job = Job.create(user_params)
    redirect_to @user
  end

  def show
  end

  def destroy
  end

  private

  def job_params
    params.require(:job).permit(:user_id, :containers_needed, :origin, :destination, :cost, :description, :name)
  end
end
