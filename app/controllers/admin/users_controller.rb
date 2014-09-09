class Admin::UsersController < Admin::ApplicationController
  
  def index
    
    @user = User.all.first
    
    if @user.name.nil? or @user.name.nil?
      flash[:warning] = "Please, give a name to the user."
    end
    
    @label_title = "User"
    @label_name = "Name"
    @label_email = "Email"
    @label_authToken = "Authentication Token"
    @label_edit = "Edit"
    
  end
  
  def show
    
    @label_title = "User"
    @label_name = "Name"
    @label_email = "Email"
    @label_authToken = "Authentication Token"
    @label_edit = "Edit"
    @label_back = "Back"
    
    @user = User.all.first
    
  end
  
  def edit

    @label_title = "User"
    @label_name = "Name"
    @label_email = "Email"
    @label_authToken = "Authentication Token"
    @label_edit = "Edit"
    @label_back = "Back"
    @label_submit = "Save"
    @error = "error"
    
    @user = User.find(params.require(:id))
      
    #render text: @user.name
    
  end
  
  def update
    
    render text: params.inspect
    
    @label_title = "User"
    @label_name = "Name"
    @label_email = "Email"
    @label_authToken = "Authentication Token"
    @label_edit = "Edit"
    @label_back = "Back"
    @label_submit = "Save"
    @error = "error"
    
    #@user = User.find(params,require(:id))
    
    #if @user.update(user_params)
    #  flash[:success] = "Updated success!"
    #  redirect_to action: :show, :id => @use.id
    #else
    #  render 'edit'
    #end
    
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
  
end
