class TestsController < ApplicationController
  
  def index
    
    labelsEn = Hash.new
    
    labelsEn[:tags] = Hash.new
    labelsEn[:tags][:name] = "Name"
    labelsEn[:tags][:taggings_count] = "Amount"
    labelsEn[:tags][:empty_msg] = "There are no tags."
    
    labelsEn[:messages] = Hash.new
    labelsEn[:messages][:attachments] = "Attachments:"
    labelsEn[:messages][:links] = "References:"
    labelsEn[:messages][:tags] = "Tags:"
    labelsEn[:messages][:close_msg] = "Click again in line above to close this popup."
    labelsEn[:messages][:tooltip] = "Click to see more information ..."
    labelsEn[:messages][:details] = "More information ..."
    
    labelsEn[:educations] = Hash.new
    labelsEn[:educations][:label] = "Education"
    labelsEn[:educations][:empty_msg] = "There are no education records."
    labelsEn[:educations][:title] = "Title"
    labelsEn[:educations][:institution] = "Institution"
    labelsEn[:educations][:description] = "Description"
    labelsEn[:educations][:started_at] = "Started at"
    labelsEn[:educations][:done_at] = "Done at"
    labelsEn[:educations][:details] = "Details"
    
    labelsEn[:educations][:academic_periods] = Hash.new
    labelsEn[:educations][:academic_periods][:label] = "Academic Period"
    labelsEn[:educations][:academic_periods][:empty_msg] = "There are no academic period records."
    labelsEn[:educations][:academic_periods][:name] = "Academic Period"
    labelsEn[:educations][:academic_periods][:started_at] = "Started at"
    labelsEn[:educations][:academic_periods][:done_at] = "Done at"
    labelsEn[:educations][:academic_periods][:details] = "Details"
    
    labelsEn[:educations][:academic_periods][:academic_records] = Hash.new
    labelsEn[:educations][:academic_periods][:academic_records][:label] = "Courses"
    labelsEn[:educations][:academic_periods][:academic_records][:empty_msg] = "There are no course records."
    labelsEn[:educations][:academic_periods][:academic_records][:course] = "Course"
    labelsEn[:educations][:academic_periods][:academic_records][:grade] = "Grade"
    labelsEn[:educations][:academic_periods][:academic_records][:description] = "Description"
    labelsEn[:educations][:academic_periods][:academic_records][:details] = "Details"
    
    labelsEn[:experiences] = Hash.new
    labelsEn[:experiences][:label] = "Experience"
    
    labelsEn[:experiences][:companies] = Hash.new
    labelsEn[:experiences][:companies][:label] = "Company"
    labelsEn[:experiences][:companies][:empty_msg] = "There are no company records."
    labelsEn[:experiences][:companies][:name] = "Company"
    labelsEn[:experiences][:companies][:description] = "Description"
    labelsEn[:experiences][:companies][:first_job_date] = "Started at"
    labelsEn[:experiences][:companies][:last_job_date] = "Done at"
    labelsEn[:experiences][:companies][:details] = "Details"
    
    labelsEn[:experiences][:companies][:jobs] = Hash.new
    labelsEn[:experiences][:companies][:jobs][:label] = "Jobs"
    labelsEn[:experiences][:companies][:jobs][:empty_msg] = "There are no job records to this company."
    labelsEn[:experiences][:companies][:jobs][:title] = "Job"
    labelsEn[:experiences][:companies][:jobs][:description] = "Description"
    labelsEn[:experiences][:companies][:jobs][:started_at] = "Started at"
    labelsEn[:experiences][:companies][:jobs][:done_at] = "Done at"
    labelsEn[:experiences][:companies][:jobs][:details] = "Details"
    
    labelsEn[:types_certificates] = Hash.new
    labelsEn[:types_certificates][:label] = "Certificates"
    labelsEn[:types_certificates][:empty_msg] = "There are no certificate records."
    labelsEn[:types_certificates][:name] = "Name"
    labelsEn[:types_certificates][:description] = "Description"
    labelsEn[:types_certificates][:details] = "Details"
    
    labelsEn[:types_certificates][:certificates] = Hash.new
    labelsEn[:types_certificates][:certificates][:label] = "Certificates"
    labelsEn[:types_certificates][:certificates][:empty_msg] = "There are no certificate records."
    labelsEn[:types_certificates][:certificates][:title] = "Title"
    labelsEn[:types_certificates][:certificates][:description] = "Description"
    labelsEn[:types_certificates][:certificates][:issued_at] = "Issued at"
    labelsEn[:types_certificates][:certificates][:details] = "Details"
    
    labelsEn[:publications] = Hash.new
    labelsEn[:publications][:label] = "Publications"
    labelsEn[:publications][:empty_msg] = "There are no publication records."
    labelsEn[:publications][:title] = "Title"
    labelsEn[:publications][:description] = "Description"
    labelsEn[:publications][:published_at] = "Published at"
    labelsEn[:publications][:details] = "Details"
    
    @labelsEN = Labels.find(2)
    
    @labelsEN.update(content: labelsEn.to_json)
    
    render text: labelsEn.to_json
    
=begin
    labels = Hash.new
    
    labels[:tags] = Hash.new
    labels[:tags][:name] = "Nome"
    labels[:tags][:taggings_count] = "Quantidade"
    labels[:tags][:empty_msg] = "Não há tags cadastradas."
    
    labels[:messages] = Hash.new
    labels[:messages][:attachments] = "Anexos:"
    labels[:messages][:links] = "Referências:"
    labels[:messages][:tags] = "Tags:"
    labels[:messages][:close_msg] = "Clique novamente na linha acima para fechar esta janela."
    labels[:messages][:tooltip] = "Clique para ver mais detalhes ..."
    labels[:messages][:details] = "Mais informações ..."
    
    labels[:educations] = Hash.new
    labels[:educations][:label] = "Educação"
    labels[:educations][:empty_msg] = "Não há registro de educação cadastrado."
    labels[:educations][:title] = "Título"
    labels[:educations][:institution] = "Instituição"
    labels[:educations][:description] = "Descrição"
    labels[:educations][:started_at] = "Início"
    labels[:educations][:done_at] = "Término"
    labels[:educations][:details] = "Detalhes"
    
    labels[:educations][:academic_periods] = Hash.new
    labels[:educations][:academic_periods][:label] = "Períodos Letivos"
    labels[:educations][:academic_periods][:empty_msg] = "Não há períodos letivos cadastrados para esse nível."
    labels[:educations][:academic_periods][:name] = "Período Letivo"
    labels[:educations][:academic_periods][:started_at] = "Início"
    labels[:educations][:academic_periods][:done_at] = "Término"
    labels[:educations][:academic_periods][:details] = "Detalhes"
    
    labels[:educations][:academic_periods][:academic_records] = Hash.new
    labels[:educations][:academic_periods][:academic_records][:label] = "Cursos"
    labels[:educations][:academic_periods][:academic_records][:empty_msg] = "Não há cursos cadastrados para esse perído letivo."
    labels[:educations][:academic_periods][:academic_records][:course] = "Curso"
    labels[:educations][:academic_periods][:academic_records][:grade] = "Nota"
    labels[:educations][:academic_periods][:academic_records][:description] = "Descrição"
    labels[:educations][:academic_periods][:academic_records][:details] = "Detalhes"
    
    labels[:experiences] = Hash.new
    labels[:experiences][:label] = "Experiência"
    
    labels[:experiences][:companies] = Hash.new
    labels[:experiences][:companies][:label] = "Empresas"
    labels[:experiences][:companies][:empty_msg] = "Não há empresas cadastradas"
    labels[:experiences][:companies][:name] = "Empresa"
    labels[:experiences][:companies][:description] = "Descrição"
    labels[:experiences][:companies][:first_job_date] = "Data de Entrada"
    labels[:experiences][:companies][:last_job_date] = "Data de Saída"
    labels[:experiences][:companies][:details] = "Detalhes"
    
    labels[:experiences][:companies][:jobs] = Hash.new
    labels[:experiences][:companies][:jobs][:label] = "Cargos"
    labels[:experiences][:companies][:jobs][:empty_msg] = "Não há cargos cadastrados para essa empresa."
    labels[:experiences][:companies][:jobs][:title] = "Cargo"
    labels[:experiences][:companies][:jobs][:description] = "Descrição"
    labels[:experiences][:companies][:jobs][:started_at] = "Início"
    labels[:experiences][:companies][:jobs][:done_at] = "Término"
    labels[:experiences][:companies][:jobs][:details] = "Detalhes"
    
    labels[:types_certificates] = Hash.new
    labels[:types_certificates][:label] = "Certificados"
    labels[:types_certificates][:empty_msg] = "Não há certificados cadastrados"
    labels[:types_certificates][:name] = "Nome"
    labels[:types_certificates][:description] = "Descrição"
    labels[:types_certificates][:details] = "Detalhes"
    
    labels[:types_certificates][:certificates] = Hash.new
    labels[:types_certificates][:certificates][:label] = "Certificados"
    labels[:types_certificates][:certificates][:empty_msg] = "Não há certificados cadastrados"
    labels[:types_certificates][:certificates][:title] = "Título"
    labels[:types_certificates][:certificates][:description] = "Descrição"
    labels[:types_certificates][:certificates][:issued_at] = "Emissão"
    labels[:types_certificates][:certificates][:details] = "Detalhes"
    
    labels[:publications] = Hash.new
    labels[:publications][:label] = "Publicações"
    labels[:publications][:empty_msg] = "Não há publicações cadastradas."
    labels[:publications][:title] = "Título"
    labels[:publications][:description] = "Descrição"
    labels[:publications][:published_at] = "Publicação"
    labels[:publications][:details] = "Detalhes"

=begin
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
