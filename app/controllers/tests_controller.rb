class TestsController < ApplicationController
  
  def index
    
    @certificate = Certificate.find(16)
    
    @certificate.reload
    #@certificate.tag_list.add("Game Theory")
    #@certificate.tag_list.add("Computation Theory")
    
    #@certificate.links.new(text: "Detalhes do curso", link: "https://www.coursera.org/course/posa") 
    @certificate.attachments.new(name: "Certificado", path: "assets/PatternOrientedSoftwaresArchitectureAndroid.pdf")
    
    @certificate.save
    @certificate.reload
    
    render text: @certificate.attachments.map{|e| [e.name, e.path]}
    
  end
  
end
