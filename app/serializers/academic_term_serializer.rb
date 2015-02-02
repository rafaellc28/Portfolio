class AcademicTermSerializer < ActiveModel::Serializer
  
  attributes :id, :education_id, :name, :start, :end
  
  has_many :tags
  has_many :academic_courses
  has_many :links
  has_many :attachments
  has_many :awards
  
end
