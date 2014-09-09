class AcademicTerm < ActiveRecord::Base
  
  belongs_to :education
  
  has_many :academic_courses
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tags
  validate :validate_awards
  
  scope :ordered, lambda { order("done_at DESC") }
  
  # asserts this academic_term has the tags of tits children of type academic_course
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  # asserts the education parent also has the tags of this academic_term
  def validate_tags
    tag_list.each do |tag|
      education.validate_tag(tag)
    end
    education.save
  end
  
  # asserts the education parent also has the awards of this academic_term
  def validate_award(award = nil)
    if not award.nil?
      awards.create(title: award.title, description: award.description, issued: award.issued)
      education.validate_award(award)
    end
  end
  
  # asserts the education parent also has the awards of this academic_term
  def validate_awards
    awards.each do |award|
      education.validate_award(award)
    end
  end
  
  # add links, attachments, awards, tags and the related academic_courses
  # to the json of an instance of this model
  def serializable_hash(options = nil)
    options = { 
      :include => [:academic_courses, :links, :attachments, :awards, {:tags => {:only => [:id, :name]}}] 
    }.update(options)
    
    super options
  end
  
end
