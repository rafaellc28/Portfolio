class Award < ActiveRecord::Base
  
  belongs_to :award_ref, polymorphic: true
  
  validates_uniqueness_of :title, scope: [:award_ref_id, :award_ref_type]
  
end
