class Api::CompaniesController < Api::BaseController
  
  def index
    render json: Company.all.to_json
  end
  
  def show
    render json: Company.find(params.require(:id)).to_json
  end
  
end