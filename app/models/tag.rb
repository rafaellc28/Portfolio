class Tag < ActiveRecord::Base
  
  has_many :tags_entities
  has_many :entities, through: :tags_entities
  has_many :educations, through: :entities
  has_many :academic_periods, through: :entities
  has_many :companies, through: :entities
  has_many :publications, through: :entities
  has_many :certificates, through: :entities
  has_many :jobs, through: :entities
  
end
