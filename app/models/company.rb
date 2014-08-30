class Company < ActiveRecord::Base
  
  has_many :jobs
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  validate :validate_tag
  
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  def first_job_date
    jobs.order("started_at").first.started_at
  end
  
  def last_job_date
    jobs.order("done_at DESC").first.done_at
  end
  
  def FirstAndLastJobDates
    [jobs.order("started_at").first.started_at.strftime("%Y-%m-%d"), jobs.order("done_at DESC").first.done_at.strftime("%Y-%m-%d")]
  end
  
  def serializable_hash(options = nil)
    options = {
      :methods => [:first_job_date, :last_job_date], 
      :include => [:jobs, :links, :attachments, :awards, {:tags => {:only => :name}}]
    }.update(options)
    
    super options
  end
  
end
