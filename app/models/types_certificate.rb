class TypesCertificate < ActiveRecord::Base
  
  has_many :certificates
  
  acts_as_taggable_on :tags
  
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
      save
    end
  end
  
  def serializable_hash(options = nil)
    options = { 
      :include => [:certificates, {:tags => {:only => :name}}] 
    }.update(options)
    
    super options
  end
  
end
