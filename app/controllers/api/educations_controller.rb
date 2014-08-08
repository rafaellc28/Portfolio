class EducationsController < ApplicationController
  
  def index
    render json: Education.all
  end
  
  def show
    render json: Education.find(params.require(:id))
  end
  
end