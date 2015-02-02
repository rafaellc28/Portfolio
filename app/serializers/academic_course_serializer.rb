class AcademicCourseSerializer < ActiveModel::Serializer
  
  attributes :id, :academic_term_id, :course, :grade, :description
  
  has_many :tags
  
end
