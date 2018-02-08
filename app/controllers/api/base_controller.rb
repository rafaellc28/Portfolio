class Api::BaseController < ActionController::Base
  before_action :check_auth # authentication
  
  private

  def check_auth
    #authenticate_basic || render_unauthorized_basic
    authenticate_token || render_unauthorized_token
  end
  
  def authenticate_token
    
    authenticate_with_http_token do |token, options|
      
      # https://gist.github.com/josevalim/fb706b1e933ef01e4fb6
      
      #user = User.find_by_authentication_token(token)
      user = User.all.first
      
      # secure way in order to avoid timing attacks (https://gist.github.com/josevalim/fb706b1e933ef01e4fb6)
      user and Devise.secure_compare(user.authentication_token, token)
      
    end
    
  end
      
  def authenticate_basic
    
    authenticate_with_http_basic do |username, password|
      resource = User.find_by_email(username)
      resource and resource.valid_password?(password)
    end
    
  end
  
  def render_unauthorized_basic
    self.headers['WWW-Authenticate'] = 'Basic realm="Portfolio"' 
    
    respond_to do |format|
      format.json { render json: {error: 'unauthorized'}, status: :unauthorized } 
      format.xml { render xml: {error: 'unauthorized'}, status: :unauthorized } 
      format.html { render text: {error: 'unauthorized'}, status: :unauthorized }
    end
  end
  
  def render_unauthorized_token
    self.headers['WWW-Authenticate'] = 'Token realm="Portfolio"' 
    
    respond_to do |format|
      format.json { render json: {error: 'unauthorized'}, status: :unauthorized } 
      format.xml { render xml: {error: 'unauthorized'}, status: :unauthorized } 
      format.html { render text: {error: 'unauthorized'}, status: :unauthorized }
    end
  end
  
end
