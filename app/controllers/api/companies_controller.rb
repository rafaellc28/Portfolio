class Api::CompaniesController < Api::BaseController
  
  def index
    render json: Company.all
  end
  
  def show
    render json: Company.find(params.require(:id))
  end
  
end