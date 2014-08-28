class AcademicPeriod < ActiveRecord::Base
  
  belongs_to :education
  
  has_many :academic_records
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tag
  
  scope :ordered, lambda { order("done_at DESC") }
  
  def validate_tag(tag = nil)
    if tag.nil?
      tag_list.each do |tag|
       self.education.validate_tag(tag)
      end
    else
      tag_list.add(tag)
      self.education.validate_tag(tag)
    end
  end
  
  def serializable_hash(options = nil)
    options = { 
      :include => [:academic_records, :links, :attachments, :awards, {:tags => {:only => :name}}] 
    }.update(options)
    
    super options
  end
  
end
