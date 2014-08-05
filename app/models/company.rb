class Company < ActiveRecord::Base
  
  has_many :jobs
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  has_many :tags, through: :entity
  
end
