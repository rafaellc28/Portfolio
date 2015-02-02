class JobSerializer < ActiveModel::Serializer
  
  attributes :id, :company_id, :title, :description, :start, :end
  
  has_many :tags
  has_many :links
  has_many :attachments
  has_many :awards
  has_one :end_date
  
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
  
end
