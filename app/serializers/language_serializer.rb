class LanguageSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :description, :acronym
  
end
