class Education < ActiveRecord::Base
  
  has_many :academic_periods
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable
  acts_as_taggable_on :tags
  
  self.per_page = 30
  
end
