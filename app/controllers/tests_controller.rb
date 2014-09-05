class TestsController < ApplicationController
  
  def index

    @academicRecord = TypesCertificate.find(1)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.remove("Game Theory")
    @academicRecord.tag_list.remove("Routing Games")
    @academicRecord.tag_list.remove("Traffic Assignment")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str = @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = Publication.find(5)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Game Theory")
    @academicRecord.tag_list.add("Routing Games")
    @academicRecord.tag_list.add("Traffic Assignment")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    render text: @str

=begin
    @academicRecord = Certificate.find(18)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Software Engineering")
    @academicRecord.tag_list.add("Web Development")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = Certificate.find(12)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Gamification")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    render text: @str
=begin
    @academicRecord = AcademicRecord.find(32)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Network Computing")
    @academicRecord.tag_list.add("Network Simulation")
    @academicRecord.tag_list.add("Network Protocols")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str = @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @academicRecord = AcademicRecord.find(33)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Software Validation and Verification")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(34)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Network Computing")
    @academicRecord.tag_list.add("Network Simulation")
    @academicRecord.tag_list.add("Network Protocols")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(35)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Distributed Systems")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(36)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Image Processing")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(37)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Computational Geometry")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(38)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Software Engineering")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @academicRecord = AcademicRecord.find(39)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Economy")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @academicRecord = AcademicRecord.find(40)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Visual Computing")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(41)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Network Computing")
    @academicRecord.tag_list.add("Network Protocols")
    @academicRecord.tag_list.add("Peer-to-peer Protocols")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(42)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Distributed Computing")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(43)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Artificial Intelligence")
    @academicRecord.tag_list.add("Machine Learning")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(44)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Human–Computer Interaction")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(45)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Law")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"

    @academicRecord = AcademicRecord.find(46)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Management")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @academicRecord = AcademicRecord.find(47)
    
    @academicRecord.reload
    
    @academicRecord.tag_list.add("Physics")
    
    @academicRecord.save
    @academicRecord.reload
    
    @str += @academicRecord.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    render text: @str
    
=begin
    @certificate = Certificate.find(17)
    
    @certificate.reload
    
    @certificate.tag_list.add("Cloud Computing")
    
    @certificate.save
    @certificate.reload
    
    @str = @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(18)
    
    @certificate.reload
    
    @certificate.tag_list.add("Cloud Computing")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @certificate = Certificate.find(19)
    
    @certificate.reload
    
    @certificate.tag_list.add("Cloud Computing")
    
    @certificate.save
    @certificate.reload
    
    @str += @certificate.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    render text: @str
=end
    
=begin
    @job = Job.find(1)
    
    @job.reload
    
    @job.tag_list.add("Big Data")
    @job.tag_list.add("Amazon Web Service")
    @job.tag_list.add("Cloud Computing")
    @job.tag_list.add("AWS")
    @job.tag_list.add("PHP")
    @job.tag_list.add("Java")
    @job.tag_list.add("Python")
    @job.tag_list.add("Hive")
    @job.tag_list.add("Map-Reduce")
    @job.tag_list.add("Apache Mahout")
    @job.tag_list.add("PostgreSQL")
    @job.tag_list.add("DynamoDB")
    
    @job.save
    @job.reload
    
    @str = @job.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @job = Job.find(2)
    
    @job.reload
    
    @job.tag_list.add("Algoritmos")
    @job.tag_list.add("Docência")
    @job.tag_list.add("Computer Science")
    
    @job.save
    @job.reload
    
    @str += @job.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @job = Job.find(3)
    
    @job.reload
    
    @job.tag_list.add("Computer Science")
    @job.tag_list.add("Research")
    @job.tag_list.add("Grid Computing")
    @job.tag_list.add("Optical Networking")
    @job.tag_list.add("Optical Burst Switching")
    
    @job.save
    @job.reload
    
    @str += @job.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @job = Job.find(4)
    
    @job.reload
    
    @job.tag_list.add("PHP")
    @job.tag_list.add("Javascript")
    @job.tag_list.add("MySQL")
    @job.tag_list.add("SQLite")
    
    @job.save
    @job.reload
    
    @str += @job.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @job = Job.find(5)
    
    @job.reload
    
    @job.tag_list.add("PHP")
    @job.tag_list.add("ASP")
    @job.tag_list.add("Javascript")
    @job.tag_list.add("VBScript")
    @job.tag_list.add("MySQL")
    @job.tag_list.add("SQL")
    
    @job.save
    @job.reload
    
    @str += @job.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    @job = Job.find(6)
    
    @job.reload
    
    @job.tag_list.add("Mobile")
    @job.tag_list.add("C")
    @job.tag_list.add("C++")
    
    @job.save
    @job.reload
    
    @str += @job.tags.map{|e| e.name}.to_s
    @str += "<br>"
    
    render text: @str
=end
    
=begin
    @job = Publication.find(1)
    
    @job.reload
    
    #@job.links.new(text: "Url", link: "http://www.ewh.ieee.org/reg/9/etrans/ieee/issues/vol10/vol10issue4june2012/10TLA4_12LimaCuri.pdf")
    
    #@job.save
    #@job.reload
    
    @str = @job.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @job.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @job = Publication.find(2)
    
    @job.reload
    
    #@job.links.new(text: "Url", link: "http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6364304")
    
    #@job.save
    #@job.reload
    
    @str = @job.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @job.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @job = Publication.find(3)
    
    @job.reload
    
    #@job.links.new(text: "Url", link: "http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6107411")
    
    #@job.save
    #@job.reload
    
    @str = @job.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @job.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @job = Publication.find(4)
    
    @job.reload
    
    #@job.attachments.new(name: "Certificado", path: "assets/pibic.pdf")
    
    #@job.save
    #@job.reload
    
    @str = @job.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @job.links.map{|e| [e.text, e.link]}.to_s
    @str += "<br>"
    
    @job = Publication.find(5)
    
    @job.reload
    
    #@job.links.new(text: "Url", link: "http://www.bibliotecadigital.unicamp.br/document/?code=000906902")
    
    #@job.save
    #@job.reload
    
    @str = @job.attachments.map{|e| [e.name, e.path]}.to_s
    @str += "<br>"
    @str += @job.links.map{|e| [e.text, e.link]}.to_s
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
