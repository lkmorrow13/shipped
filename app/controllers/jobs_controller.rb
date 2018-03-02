class JobsController < ApplicationController
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

  def job_params
    params.require(:job).permit(:user_id, :containers_needed, :origin, :destination, :cost, :description, :name)
  end
end
