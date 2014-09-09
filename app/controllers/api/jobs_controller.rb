class JobsController < ApplicationController
  
  def index
    render json: Job.all.to_json
  end
  
  def show
    render json: Job.find(params.require(:id)).to_json
  end
  
end
