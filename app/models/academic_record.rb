class AcademicRecord < ActiveRecord::Base
  
  belongs_to :academic_period
  
  acts_as_taggable_on :tags
  
  validate :validate_tag
  
  def validate_tag(tag = nil)
    if tag.nil?
      tag_list.each do |tag|
       self.academic_period.validate_tag(tag)
      end
    else
      tag_list.add(tag)
      self.academic_period.validate_tag(tag)
    end
  end
  
  def serializable_hash(options = nil)
    options = { 
      :include => {:tags => {:only => :name}} 
    }.update(options)
    
    super options
  end
  
end
