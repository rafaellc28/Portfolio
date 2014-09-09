class Api::ProjectsController < Api::BaseController
  
  def index
    render json: Project.all
  end
  
  def show
    render json: Project.find(params.require(:id))
  end
  
end