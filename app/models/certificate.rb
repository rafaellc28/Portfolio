class Certificate < ActiveRecord::Base
  
  belongs_to :types_certificate
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tags
  validate :validate_awards
  
  # asserts the types_certificate parent also has the tags of this certificate
  def validate_tags
    tag_list.each do |tag|
      types_certificate.validate_tag(tag)
    end
    types_certificate.save
  end
  
  # asserts the types_certificate parent also has the awards of this certificate
  def validate_awards
    awards.each do |award|
      types_certificate.validate_award(award)
    end
  end
  
  # add links, attachments, awards and tags to the json of this model
  def serializable_hash(options = nil)
    options = { 
      :include => [:links, :attachments, :awards, {:tags => {:only => [:id, :name]}}] 
    }.update(options)
    
    super options
  end
  
end
