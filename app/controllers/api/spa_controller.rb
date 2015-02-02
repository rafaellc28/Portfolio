class Api::SpaController < Api::BaseController
  
  def index
    
    projects = Project.all
    educations = Education.all
    publications = Publication.all
    certificates = TypesCertificate.all
    companies = Company.all
    
    render json: [projects, educations, publications, certificates, companies]
    
  end
  
end