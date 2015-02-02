class CompanySerializer < ActiveModel::Serializer
  
  attributes :id, :name, :description
  
  has_many :jobs
  has_many :tags
  has_many :links
  has_many :attachments
  has_many :awards
  
  has_one :first_job_date
  has_one :last_job_date
  
  # get the start date of the first job in this company
  def first_job_date
    object.jobs.order("start").first.start
  end
  
  # get the end date of the last job in this company
  # substitute nil last job dates of companies to the current date
  def last_job_date
    end_date = object.jobs.order('"end" DESC').first.end
    
    if end_date.nil? or end_date.blank?
      
      time = Time.new
      end_date = time.strftime("%Y-%m-%d")
      
    end
    
    end_date
    
  end
  
end
