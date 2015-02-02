class TypesCertificate < ActiveRecord::Base
  
  has_many :certificates
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  # asserts that name is present and unique
  validates :name, presence: true, uniqueness: true
  
  # asserts that this types_certificate has the tags of its children of type certificate
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  # asserts that this types_certificate has the awards of its children of type certificate
  def validate_award(award = nil)
    if not award.nil?
      awards.create(title: award.title, description: award.description, issued: award.issued)
    end
  end
  
end
