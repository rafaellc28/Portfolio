class Api::BaseController < ActionController::Base
  before_action :check_auth
  
  private

  def check_auth
    #authenticate_basic || render_unauthorized
    authenticate_token || render_unauthorized
  end
  
  def authenticate_token
    
    authenticate_or_request_with_http_token do |token, options|
      
      resource = User.find_by_authentication_token(token)
      
      if not resource.nil?
        return true
      else
        return false
      end
      
    end
    
  end
      
  def authenticate_basic
    
    authenticate_or_request_with_http_basic do |username, password|
      resource = User.find_by_email(username)
      if !resource.nil? and resource.valid_password?(password)
        return true
      else
        return false
      end
      
    end
    
  end
  
  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Basic realm="Portfolio"' 
    
    respond_to do |format|
      format.json { render json: {error: 'unauthorized'}, status: :unauthorized } 
      format.xml { render xml: {error: 'unauthorized'}, status: :unauthorized } 
      format.html { render text: {error: 'unauthorized'}, status: :unauthorized }
    end
  end

end
