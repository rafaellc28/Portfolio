class AcademicCourse < ActiveRecord::Base
  
  belongs_to :academic_term
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tags
  validate :validate_awards
  
  # asserts the academic_term parent also has the tags of this academic_course
  def validate_tags
    tag_list.each do |tag|
      academic_term.validate_tag(tag)
    end
    academic_term.save
  end
  
  # asserts the academic_term parent also has the awards of this academic_course
  def validate_awards
    awards.each do |award|
      academic_term.validate_award(award)
    end
  end
  
  # add tags to the json of this model
  def serializable_hash(options = nil)
    options = { 
      :include => {:tags => {:only => [:id, :name]}} 
    }.update(options)
    
    super options
  end
  
end
