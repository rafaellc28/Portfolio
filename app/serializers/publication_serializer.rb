class PublicationSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :description, :published
  
  has_many :tags
  has_many :links
  has_many :attachments
  has_many :awards
  
end
