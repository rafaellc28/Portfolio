class Api::AcademicCoursesController < Api::BaseController
  
  def index
    render json: AcademicCourse.all
  end
  
  def show
    render json: AcademicCourse.find(params.require(:id))
  end
  
end