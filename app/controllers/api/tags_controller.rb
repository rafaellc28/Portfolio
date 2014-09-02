class Api::TagsController < Api::BaseController
  
  include ActsAsTaggableOn::TagsHelper
  
  def index
    
    @certificates_tags = Certificate.tag_counts_on(:tags)
    @types_certificates_tags = TypesCertificate.tag_counts_on(:tags)
    @publications_tags = Publication.tag_counts_on(:tags)
    @educations_tags = Education.tag_counts_on(:tags)
    @academic_periods_tags = AcademicPeriod.tag_counts_on(:tags)
    @academic_records_tags = AcademicRecord.tag_counts_on(:tags)
    @companies_tags = Company.tag_counts_on(:tags)
    @jobs_tags = Job.tag_counts_on(:tags)
    
    @tags = @certificates_tags + @types_certificates_tags + @publications_tags + 
    @educations_tags + @academic_periods_tags + @academic_records_tags +
    @companies_tags + @jobs_tags
    
    @tags = @tags.uniq
    #@tags = @tags.sort_by{|tag| -tag.taggings_count }
    
    @tags_json = []
      
    tag_cloud(@tags, %w(css1 css2 css3 css4)) do |tag, css_class|
      
      tag_aux = {}
      tag_aux[:id] = tag.id
      tag_aux[:name] = tag.name
      tag_aux[:taggings_count] = tag.taggings_count
      tag_aux[:count] = tag.count
      tag_aux[:css_class] = css_class
      
      @tags_json.push(tag_aux)
    end
    
    @tags_json.to_json
    
    render json: @tags_json
    
  end
  
end