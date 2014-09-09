class Admin::UsersController < Admin::ApplicationController
  
  def index
    
    @user = User.all.first
    
    #if @user.name.nil? or @user.name.nil?
      flash[:warning] = "Please, give a name to the user. It will automatically generate the authentication token!"
    #end
    
    @label_title = "User"
    @label_name = "Name"
    @label_email = "Email"
    @label_authToken = "Authentication Token"
    @label_edit = "Edit"
    
  end
  
  def show
  end
  
end
