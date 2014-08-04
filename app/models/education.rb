class Education < ActiveRecord::Base
  
  belongs_to :entity
  
  has_many :academic_periods
  
end
