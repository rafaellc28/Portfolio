class Api::LanguagesController < Api::BaseController
  
  def index
    
    languages = Language.where(active: true).order(:preference)
    
    render json: languages
    
  end
  
end
