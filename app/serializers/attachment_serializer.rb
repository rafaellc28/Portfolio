class AttachmentSerializer < ActiveModel::Serializer
  
  attributes :id, :name
  
  has_one :path
    
  def path
    
    object.file.url
    
  end
  
end
