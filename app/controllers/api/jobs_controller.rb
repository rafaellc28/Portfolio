class JobsController < ApplicationController
  
  def index
    render json: Job.all
  end
  
  def show
    render json: Job.find(params.require(:id))
  end
  
end
