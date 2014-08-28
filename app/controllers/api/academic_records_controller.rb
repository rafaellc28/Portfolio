class Api::AcademicRecordsController < BaseController
  
  def index
    render json: AcademicRecord.all
  end
  
  def show
    render json: AcademicRecord.find(params.require(:id))
  end
  
  def byAcademicPeriod
    render json: AcademicRecord.where(academic_period_id: params.require(:academic_period_id))
  end
  
end