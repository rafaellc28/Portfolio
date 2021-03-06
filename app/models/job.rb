class Job < ActiveRecord::Base
  
  belongs_to :company, :inverse_of => :jobs
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validates :company_id, :presence => true
  
  # asserts that name is present and unique with relation to the education which this record belongs to
  validates :title, presence: true, uniqueness: {value: true, scope: :company_id}
  
  # validates date data
  validates_date :start, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg')
  validates_date :end, :format => "yyyy-mm-dd", :invalid_date_message => I18n.t('invalid_date_msg_with_blank'), :allow_blank => true
  
  validate :validate_tags, {:if => proc{|o| not o.company.blank? }}
  validate :validate_awards, {:if => proc{|o| not o.company.blank? }}
  
  # asserts the company parent also has the tags of this job
  def validate_tags
    tag_list.each do |tag|
      company.validate_tag(tag)
    end
    company.save
  end
  
  # asserts the company parent also has the awards of this job
  def validate_awards
    awards.each do |award|
      company.validate_award(award)
    end
  end
  
  def end_date
    
    end_date = ''
    
    if self.end.nil? or self.end.blank?
      
      time = Time.new
      end_date = time.strftime("%Y-%m-%d")
    else
      
      end_date = self.end
      
    end
    
    end_date
    
  end
  
  # add links, attachments, awards and tags to the json of this model
  # substitute nil end dates of jobs to the current date
  def serializable_hash(options = nil)
    options = { 
      :methods => [:end_date],
      :include => [:links, :attachments, :awards, {:tags => {:only => :name}}] 
    }.update(options)
    
    super(options).tap { |hash| hash["end"] = hash.delete "end_date" }
  end
  
end
