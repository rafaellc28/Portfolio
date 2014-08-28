class Api::EducationsController < Api::BaseController
  
  def index
    render json: Education.all.to_json
  end
  
  def show
    render json: Education.find(params.require(:id)).to_json
  end
  
end