class Api::PortfolioController < Api::BaseController
  
  def index
    render json: {
      :users => User.all.to_json,
      :projects => Project.all.to_json,
      :educations => Education.all.to_json,
      :certificates => Certificate.all.to_json, 
      :publications => Publication.all.to_json, 
      :companies => Company.all.to_json
    }
  end
  
end