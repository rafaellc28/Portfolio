class UserSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :email
  
  has_many :links
  has_many :attachments
  has_many :awards
  
end
