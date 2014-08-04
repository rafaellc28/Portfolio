class AcademicPeriod < ActiveRecord::Base
  
  belongs_to :entity
  belongs_to :education
  
  has_many :academic_records
  has_many :links, as: :parent 
  
end
