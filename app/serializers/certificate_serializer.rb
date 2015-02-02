class CertificateSerializer < ActiveModel::Serializer
  
  attributes :id, :types_certificate_id, :title, :description, :issued, :expire
  
  has_many :tags
  has_many :links
  has_many :attachments
  has_many :awards
  
end
