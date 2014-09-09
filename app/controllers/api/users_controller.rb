class Api::UsersController < Api::BaseController
  
  def index
    render json: User.all.to_json
  end
  
  def show
    render json: User.find(params.require(:id)).to_json
  end
  
end