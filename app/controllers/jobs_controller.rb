class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def edit
    @job = current_user.jobs.find(params[:id])
  end

  def update
    @job = current_user.jobs.find(params[:id])
    @job.update_attributes(job_params)
    redirect_to @job
  end

  def create
    @job = current_user.jobs.new(job_params)
    respond_to do |format|
      if @job.save
        format.html{ redirect_to @job }

        format.js
      end
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def destroy
    @job = current_user.jobs.find(params[:id])
    respond_to do |format|
      if @job.destroy
        format.html{ redirect_to new_job_path }
        format.js
      end
    end
  end

  private

  def job_params
    params.require(:job).permit(:containers_needed, :origin, :destination, :cost, :description, :name)
  end
end
