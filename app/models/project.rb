class Project < ActiveRecord::Base
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  # asserts that name is present and unique
  validates :name, presence: true, uniqueness: true
  
  # validates date data
  validates_date :created, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  validates_date :updated, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  
end
