class Api::AcademicPeriodsController < BaseController
  
  def index
    render json: AcademicPeriod.all
  end
  
  def show
    render json: AcademicPeriod.find(params.require(:id))
  end
  
  def byEducation
    render json: AcademicPeriod.where(education_id: params.require(:education_id))
  end
  
end