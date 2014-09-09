class Attachment < ActiveRecord::Base
  
  belongs_to :attachment_ref, polymorphic: true
  
  validates_uniqueness_of :name, scope: [:attachment_ref_id, :attachment_ref_type]
  
end
