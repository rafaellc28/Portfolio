class Publication < ActiveRecord::Base
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  def serializable_hash(options = nil)
    options = { 
      :include => [:links, :attachments, :awards, {:tags => {:only => [:id, :name]}}] 
    }.update(options)
    
    super options
  end
  
end
