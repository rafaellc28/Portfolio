class Publication < ActiveRecord::Base
  
  belongs_to :entity
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
end
