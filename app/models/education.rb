class Education < ActiveRecord::Base
  
  has_many :academic_terms
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  has_many :academic_courses, through: :academic_terms
  
  # asserts that title is present and unique
  validates :title, presence: true, uniqueness: true
  
  # validates date data
  validates_date :start, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  validates_date :end, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg_with_blank'), :allow_blank => true
  
  acts_as_taggable_on :tags
  
  #self.per_page = 30
  
  # asserts that this education has the tags of its children of type academic_term
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  # asserts that this education has the awards of its child of type academic_term
  def validate_award(award = nil)
    if not award.nil?
      awards.create(title: award.title, description: award.description, issued: award.issued)
    end
  end
  
end
