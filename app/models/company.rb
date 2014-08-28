class Company < ActiveRecord::Base
  
  has_many :jobs
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tag
  
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  def serializable_hash(options = nil)
    options = { 
      :include => [:jobs, :links, :attachments, :awards, {:tags => {:only => :name}}] 
    }.update(options)
    
    super options
  end
  
end
