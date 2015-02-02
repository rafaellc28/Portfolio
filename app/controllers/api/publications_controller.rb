class Api::PublicationsController < Api::BaseController
  
  def index
    render json: Publication.all
  end
  
  def show
    render json: Publication.find(params.require(:id))
  end
  
end