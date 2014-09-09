class Education < ActiveRecord::Base
  
  has_many :academic_terms
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  has_many :academic_courses, through: :academic_terms
  
  acts_as_taggable_on :tags
  
  #self.per_page = 30
  
  # asserts that this education has the tags of its children of type academic_term
  def validate_tag(tag = nil)
    if not tag.nil?
      tag_list.add(tag)
    end
  end
  
  # asserts that this education has the awards of its child of type academic_term
  def validate_award(award = nil)
    if not award.nil?
      awards.create(title: award.title, description: award.description, issued: award.issued)
    end
  end
  
  # add link, attachments, awards, tags and the related academic_terms to the json of an
  # instance of this model
  # Also, add the related academic_courses of the academic_terms
  def serializable_hash(options = nil)
    
    options = { 
      :include => [{:academic_terms => {:include => [{:academic_courses => 
      {:include => [{:tags => {:only => [:id, :name]}}, :links, :attachments, :awards]}}, 
        {:tags => {:only => [:id, :name]}}, :links, :attachments, :awards]}}, 
      :links, :attachments, :awards, {:tags => {:only => [:id, :name]}}] 
    }.update(options)
    
    super options
    
  end
  
end
