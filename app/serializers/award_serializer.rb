class AwardSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :description, :issued
  
end
