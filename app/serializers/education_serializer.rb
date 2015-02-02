class EducationSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :institution, :description, :start, :end
  
  has_many :tags
  has_many :academic_terms
  has_many :links
  has_many :attachments
  has_many :awards
  
end
