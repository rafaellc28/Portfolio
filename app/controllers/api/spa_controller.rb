class Api::SpaController < Api::BaseController
  
  def index
    render json: {:educations => Education.all.to_json, 
      :certificates => Certificate.all.to_json, 
      :publications => Publication.all.to_json, 
      :companies => Company.all.to_json}
  end
  
end