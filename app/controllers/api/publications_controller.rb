class Api::PublicationsController < Api::BaseController
  
  def index
    render json: Publication.all.to_json
  end
  
  def show
    render json: Publication.find(params.require(:id)).to_json
  end
  
end