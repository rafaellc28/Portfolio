class TemplatesController < ApplicationController
  #before_filter :authenticate_user!

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
    
    #render text: @tags.map{|tag| [tag.name, tag.taggings_count]}
  end
  
  #def tag_cloud
  #  @tags = Certificate.tag_counts_on(:tags)
  #end
  
  def template
    render :template => 'templates/' + params[:path], :layout => nil
  end
  
end
