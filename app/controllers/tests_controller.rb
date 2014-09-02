class TestsController < ApplicationController
  
  def index
    
    @certificate = Certificate.find(12)
    
    @certificate.reload
    
    @certificate.tag_list.add("Visual Computing")
    @certificate.tag_list.add("Image Processing")
    @certificate.tag_list.add("Artificial Intelligence")
    @certificate.tag_list.add("Computer Graphics")
    @certificate.tag_list.add("Computational Geometry")
    
    @certificate.save
    @certificate.reload
    
    @str = @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(13)
    
    @certificate.reload
    
    @certificate.tag_list.add("Software Engineering")
    @certificate.tag_list.add("Databases")
    @certificate.tag_list.add("Software Validation and Verification")
    @certificate.tag_list.add("Network Computing")
    @certificate.tag_list.add("Distributed Computing")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(14)
    
    @certificate.reload
    
    @certificate.tag_list.add("Optical Networking")
    @certificate.tag_list.add("Grid Computing")
    @certificate.tag_list.add("Optical Burst Switching")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(15)
    
    @certificate.reload
    
    @certificate.tag_list.add("Task Scheduling")
    @certificate.tag_list.add("Grid Computing")
    @certificate.tag_list.add("Directed Acyclic Graph")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(16)
    
    @certificate.reload
    
    @certificate.tag_list.add("Game Theory")
    @certificate.tag_list.add("Extensive-form Games")
    @certificate.tag_list.add("Normal-form Games")
    @certificate.tag_list.add("Bayesian Games")
    @certificate.tag_list.add("Repeated Games")
    @certificate.tag_list.add("Stochastic Games")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(17)
    
    @certificate.reload
    
    @certificate.tag_list.add("Game Theory")
    @certificate.tag_list.add("Auction Theory")
    @certificate.tag_list.add("Social Choice Theory")
    @certificate.tag_list.add("Mechanism Design")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(18)
    
    @certificate.reload
    
    @certificate.tag_list.add("Game Theory")
    @certificate.tag_list.add("Social and Economic Networks")
    @certificate.tag_list.add("Network Formation")
    @certificate.tag_list.add("Random Graph Models")
    @certificate.tag_list.add("Statistical Models")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(19)
    
    @certificate.reload
    
    @certificate.tag_list.add("Game Theory")
    @certificate.tag_list.add("Voting Theory")
    @certificate.tag_list.add("Social Choice Theory")
    @certificate.tag_list.add("Fair Division")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(20)
    
    @certificate.reload
    
    @certificate.tag_list.add("General Game Playing")
    @certificate.tag_list.add("Propositional Nets")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(21)
    
    @certificate.reload
    
    @certificate.tag_list.add("Probabilistic Graphical Models")
    @certificate.tag_list.add("Bayesian Graphical Models")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    render text: @str
    
=begin
    @publication = Publication.find(1)
    
    @publication.reload
    
    #@publication.links.new(text: "Url", link: "http://www.ewh.ieee.org/reg/9/etrans/ieee/issues/vol10/vol10issue4june2012/10TLA4_12LimaCuri.pdf")
    
    #@publication.save
    #@publication.reload
    
    @str = @publication.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @publication.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @publication = Publication.find(2)
    
    @publication.reload
    
    #@publication.links.new(text: "Url", link: "http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6364304")
    
    #@publication.save
    #@publication.reload
    
    @str = @publication.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @publication.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @publication = Publication.find(3)
    
    @publication.reload
    
    #@publication.links.new(text: "Url", link: "http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6107411")
    
    #@publication.save
    #@publication.reload
    
    @str = @publication.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @publication.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @publication = Publication.find(4)
    
    @publication.reload
    
    #@publication.attachments.new(name: "Certificado", path: "assets/pibic.pdf")
    
    #@publication.save
    #@publication.reload
    
    @str = @publication.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @publication.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @publication = Publication.find(5)
    
    @publication.reload
    
    #@publication.links.new(text: "Url", link: "http://www.bibliotecadigital.unicamp.br/document/?code=000906902")
    
    #@publication.save
    #@publication.reload
    
    @str = @publication.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @publication.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    render text: @str
    
=begin
    @certificate = Certificate.find(23)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.coursera.org/course/automata")
    @certificate.attachments.new(name: "Certificado", path: "assets/Automata.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str = @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(24)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.coursera.org/course/compilers") 
    @certificate.attachments.new(name: "Certificado", path: "assets/Compilers.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(25)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.coursera.org/course/interactivepython") 
    @certificate.attachments.new(name: "Certificado", path: "assets/AnIntroductionToInteractiveProgrammingInPython.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(26)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.edx.org/course/uc-berkeleyx/uc-berkeleyx-stat2-1x-introduction-1138")
    @certificate.links.new(text: "Certificado online", link: "https://s3.amazonaws.com/verify.edx.org/downloads/2e481836473a495d999351ff4e37d34e/Certificate.pdf")
    @certificate.links.new(text: "Valid Certificate Number", link: "https://verify.edx.org/cert/a3f963105896484dbcb7abc38c21e128") 
    @certificate.attachments.new(name: "Certificado", path: "assets/DescriptiveStatistics.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(27)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.edx.org/course/uc-berkeleyx/uc-berkeleyx-stat2-2x-introduction-1534")
    @certificate.links.new(text: "Certificado online", link: "https://s3.amazonaws.com/verify.edx.org/downloads/241a827dde2c444384e53a7417267061/Certificate.pdf")
    @certificate.links.new(text: "Valid Certificate Number", link: "https://verify.edx.org/cert/8d00b3ebf98e4fa787a266949f2f2a4f") 
    @certificate.attachments.new(name: "Certificado", path: "assets/Probability.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(28)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.edx.org/course/uc-berkeleyx/uc-berkeleyx-stat2-3x-introduction-1533")
    @certificate.links.new(text: "Certificado online", link: "https://s3.amazonaws.com/verify.edx.org/downloads/6a74a3a187274fa7a2e8d02a0bd89adb/Certificate.pdf")
    @certificate.links.new(text: "Valid Certificate Number", link: "https://verify.edx.org/cert/69609dbe6ea749a7a081b11b511a0582") 
    @certificate.attachments.new(name: "Certificado", path: "assets/Inference.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(29)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.edx.org/course/uc-berkeleyx/uc-berkeleyx-cs-191x-quantum-mechanics-1033")
    @certificate.links.new(text: "Certificado online", link: "https://s3.amazonaws.com/verify.edx.org/downloads/f35dab00fa614481b440c4a4a0472f8b/Certificate.pdf")
    @certificate.links.new(text: "Valid Certificate Number", link: "https://verify.edx.org/cert/b86c6199eb274a28a3aa9cf4566ca160") 
    @certificate.attachments.new(name: "Certificado", path: "assets/QuantumMechanicsAndQuantumComputation.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"

    @certificate = Certificate.find(30)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.coursera.org/course/eqp")
    @certificate.attachments.new(name: "Certificado", path: "assets/ExploringQuantumPhysics.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(31)
    
    @certificate.reload
    
    @certificate.links.new(text: "Detalhes do curso", link: "https://www.coursera.org/course/nanotech")
    @certificate.attachments.new(name: "Certificado", path: "assets/NanotechnologyTheBasics.pdf")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @certificate.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    render text: @str
=end

    
  end
  
end
