class Api::AcademicTermsController < Api::BaseController
  
  def index
    render json: AcademicPeriod.all
  end
  
  def show
    render json: AcademicPeriod.find(params.require(:id))
  end
  
end