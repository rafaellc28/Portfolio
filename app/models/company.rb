class Company < ActiveRecord::Base
  
  has_many :jobs
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  acts_as_taggable_on :tags
  
  # asserts that this company has the tags of its children of type job
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  # asserts that this company has the awards of its children of type job
  def validate_award(award = nil)
    if not award.nil?
      awards.create(title: award.title, description: award.description, issued: award.issued)
    end
  end
  
  # get the start date of the first job in this company
  def first_job_date
    jobs.order("start").first.start
  end
  
  # get the end date of the last job in this company
  # substitute nil last job dates of companies to the current date
  def last_job_date
    end_date = jobs.order('"end" DESC').first.end
    
    if end_date.nil? or end_date.blank?
      
      time = Time.new
      end_date = time.strftime("%Y-%m-%d")
      
    end
    
    end_date
    
  end
  
  # add links, attachments, awards, tags and the first fob date and last job date to the json
  # add also the related jobs
  def serializable_hash(options = nil)
    options = {
      :methods => [:first_job_date, :last_job_date], 
      :include => [:jobs, :links, :attachments, :awards, {:tags => {:only => :name}}]
    }.update(options)
    
    super options
  end
  
end
