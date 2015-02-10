class Admin::UsersController < Admin::ApplicationController
  include CacheSpa

  def index
    
    @user = User.all.first
    
    if @user.name.nil? or @user.name.nil?
      flash[:warning] = I18n.t('empty_name_msg')
    end
    
  end
  
  def show
    
    @user = User.all.first
    
  end
  
  def edit
    
    @user = User.find(params.require(:id))
    
  end
  
  def update
    
    @user = User.find(params.require(:id))
    
    if @user.update(user_params)
      flash[:success] = I18n.t('update_success_msg')
      
      # Cache the JSON response read by the API
      Rails.cache.write("spa", spa_api_response)
      
      redirect_to action: :index, status: 303
    else
      render 'edit'
    end
    
  end
  
  private
    def user_params
      params.permit(:name, :email)
    end
  
end
