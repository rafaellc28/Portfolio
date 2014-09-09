class Link < ActiveRecord::Base
  
  belongs_to :link_ref, polymorphic: true
  
  validates_uniqueness_of :text, scope: [:link_ref_id, :link_ref_type]
  
end
