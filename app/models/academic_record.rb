class AcademicRecord < ActiveRecord::Base
  
  belongs_to :academic_period
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tags
  
  def validate_tags
    tag_list.each do |tag|
      self.academic_period.validate_tag(tag)
    end
  end
  
  def serializable_hash(options = nil)
    options = { 
      :include => {:tags => {:only => [:id, :name]}} 
    }.update(options)
    
    super options
  end
  
end
