class Certificate < ActiveRecord::Base
  
  belongs_to :types_certificate, :inverse_of => :certificates
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validates :types_certificate_id, :presence => true
  
  # asserts that name is present and unique with relation to the education which this record belongs to
  validates :title, presence: true, uniqueness: {value: true, scope: :types_certificate_id}
  
  # validates date data
  validates_date :issued, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  validates_date :expire, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg_with_blank'), :allow_blank => true
  
  validate :validate_tags, {:if => proc{|o| not o.types_certificate.blank? }}
  validate :validate_awards, {:if => proc{|o| not o.types_certificate.blank? }}
  
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
