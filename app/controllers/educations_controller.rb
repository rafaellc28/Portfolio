#require 'digest/md5'
class EducationsController < ApplicationController
  
  before_action :authenticate_user!
  #before_filter :check_auth
  
  def index
    @educations = Education.paginate(:page => params[:page] || 1)
      
    @user = User.find(1)
    @user.save!
    
    #@education.reload
    #@str = @education.tags.map{|tag| tag.name}.to_s
    #@education.tag_list.remove("visual-computing")   # add a single tag. alias for <<
    #@education.tag_list.add("Computer Science")   # add a single tag. alias for <<
    #@education.tag_list.remove("computer science")   # add a single tag. alias for <<
    #@education.tag_list.add("Game Theory")   # add a single tag. alias for <<
    
    #@education.save
    #@education.reload
    #@str = @str + "<br>" + @education.tags.map{|tag| tag.name}.to_s
    
    
    
    #render text: @str
    
  end

=begin

  def destroy
    sign_out :user
    redirect_to root_path
  end
  
  private
  
    def check_auth
      authenticate_digest || render_unauthorized
    end
    
    def authenticate_digest
      authenticate_or_request_with_http_basic do |username, password|
        #render text: password
        resource = User.find_by_email(username)
        #resource2 = User.find_by_encrypted_password(password)
        if resource.encrypted_password == password
          sign_in resource
        #else
        #  render text: 'Bad credentials html'
        else
          return false
        end
        #warden.custom_failure! if performed?
        #User.authenticate(username, password) 
        
      end
    end
    
    def render_unauthorized
      self.headers['WWW-Authenticate'] = 'Basic realm="Educations"' 
      
      respond_to do |format|
        format.json { render json: 'Bad credentials json', status: 401 } 
        format.xml { render xml: 'Bad credentials xml', status: 401 } 
        format.html { render text: 'Bad credentials html', status: 401 }
      end
    end
=end

end
