class AcademicCourse < ActiveRecord::Base
  
  belongs_to :academic_term, :inverse_of => :academic_courses
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validates :academic_term_id, :presence => true
  
  # asserts that course is present and unique with relation to the academic_term which this record belongs to
  validates :course, presence: true, uniqueness: {value: true, scope: :academic_term_id}
  
  validate :validate_tags, {:if => proc{|o| not o.academic_term.blank? }}
  validate :validate_awards, {:if => proc{|o| not o.academic_term.blank? }}
  
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
      :include => [:links, :attachments, :awards, {:tags => {:only => [:id, :name]}}]
    }.update(options)
    
    super options
  end
  
end
