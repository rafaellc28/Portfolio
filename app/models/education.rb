class Education < ActiveRecord::Base
  
  has_many :academic_periods
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  has_many :academic_records, through: :academic_periods
  
  acts_as_taggable_on :tags
  
  #self.per_page = 30
  
  validate :validate_tag
  
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  def orderedAcademicPeriods
    academic_periods.ordered
  end
  
  def serializable_hash(options = nil)
    
    options = { 
      :include => [{:academic_periods => {:include => :academic_records}}, 
      :links, :attachments, :awards, {:tags => {:only => :name}}] 
    }.update(options)
    
    super options
    
    #super.tap { |hash| hash["academic_periods"] = hash.delete "orderedAcademicPeriods" }
    
  end
  
end
