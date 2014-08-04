class Tag < ActiveRecord::Base
  
  has_many :tags_entities
  has_many :entities, through: :tags_entities
  
end
