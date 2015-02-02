class ProjectSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :description, :created, :updated, :version
  
  has_many :tags
  has_many :links
  has_many :attachments
  has_many :awards
  
end
