class AcademicTerm < ActiveRecord::Base
  
  belongs_to :education, :inverse_of => :academic_terms
  
  has_many :academic_courses
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validates :education_id, :presence => true
  # asserts that name is present and unique with relation to the education which this record belongs to
  validates :name, presence: true, uniqueness: {value: true, scope: :education_id}
  
  #validates date data
  validates_date :start, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  validates_date :end, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg_with_blank'), :allow_blank => true
  
  validate :validate_tags, {:if => proc{|o| not o.education.blank? }}
  validate :validate_awards, {:if => proc{|o| not o.education.blank? }}
  
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
      
      #if result.errors.any?
      #  errors.add(:title, "has already been taken for the parent of type Education")
      #end
    end
  end
  
  # asserts the education parent also has the awards of this academic_term
  def validate_awards
    awards.each do |award|
      education.validate_award(award)
    end
  end
  
end
