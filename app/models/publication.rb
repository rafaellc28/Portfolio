class Publication < ActiveRecord::Base
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  # asserts that name is present and unique
  validates :title, presence: true, uniqueness: true
  
  # validates date data
  validates_date :published, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  
  # add its links, attachments, awards and tags to the json of this model
  def serializable_hash(options = nil)
    options = { 
      :include => [:links, :attachments, :awards, {:tags => {:only => [:id, :name]}}] 
    }.update(options)
    
    super options
  end
  
end
