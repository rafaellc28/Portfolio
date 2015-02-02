class TypesCertificateSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :description
  
  has_many :certificates
  has_many :tags
  has_many :links
  has_many :attachments
  has_many :awards
  
end
