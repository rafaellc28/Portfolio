class Api::EducationsController < Api::BaseController
  
  def index
    render json: Education.all
  end
  
  def show
    render json: Education.find(params.require(:id))
  end
  
end