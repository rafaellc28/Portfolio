class Entity < ActiveRecord::Base
  
  has_many :tags_entities
  has_many :tags, through: :tags_entities
  
end
