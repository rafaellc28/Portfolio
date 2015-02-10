module CacheSpa
  extend ActiveSupport::Concern
  
  include ActsAsTaggableOn::TagsHelper

  def cache_spa_response
    return Rails.cache.fetch("spa") do
      spa_api_response
    end
  end

  def spa_api_response
    
    projects = Project.all
    educations = Education.all
    publications = Publication.all
    certificates = TypesCertificate.all
    companies = Company.all
      
    # Get the labels
    labels = Labels.joins(:language).where("languages.active = true").order("languages.preference")
      
    labels_json = {}
    
    labels.each do |label|
      
      # JSON.decode is necessary to remove the backslashes from the json generated below
      labels_json[label.language.acronym] = ActiveSupport::JSON.decode(label.content)
        
    end

    # Get the languages
    languages = Language.where(active: true).order(:preference)

    # Get the user
    user = User.all.first
      
    # Get the tags
    certificates_tags = Certificate.tag_counts_on(:tags)
    types_certificates_tags = TypesCertificate.tag_counts_on(:tags)
    publications_tags = Publication.tag_counts_on(:tags)
    educations_tags = Education.tag_counts_on(:tags)
    academic_terms_tags = AcademicTerm.tag_counts_on(:tags)
    academic_courses_tags = AcademicCourse.tag_counts_on(:tags)
    companies_tags = Company.tag_counts_on(:tags)
    jobs_tags = Job.tag_counts_on(:tags)
      
    tags = certificates_tags + types_certificates_tags + publications_tags + 
    educations_tags + academic_terms_tags + academic_courses_tags +
    companies_tags + jobs_tags
      
    tags = tags.uniq
    
    tags_json = []
        
    tag_cloud(tags, %w(css1 css2 css3 css4)) do |tag, css_class|
        
      tag_aux = {}
      tag_aux[:id] = tag.id
      tag_aux[:name] = tag.name
      tag_aux[:taggings_count] = tag.taggings_count
      tag_aux[:count] = tag.count
      tag_aux[:css_class] = css_class
        
      tags_json.push(tag_aux)
    end

    [projects, educations, publications, certificates, companies, labels_json, languages, user, tags_json]

  end

end
