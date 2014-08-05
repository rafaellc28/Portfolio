class Company < ActiveRecord::Base
  
  has_many :jobs
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  has_and_belongs_to_many :tags
  
end
