class Api::SpaController < Api::BaseController
  include CacheSpa
  
  def index
    
    render json: cache_spa_response
    
  end

end
