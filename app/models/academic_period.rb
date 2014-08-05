class AcademicPeriod < ActiveRecord::Base
  
  belongs_to :education
  
  has_many :academic_records
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  has_and_belongs_to_many :tags
  
end
