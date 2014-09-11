class Admin::LabelsController < Admin::ApplicationController
  
  def index
    
    labelsEn = Hash.new
    
    labelsEn[:config] = Hash.new
    labelsEn[:config][:number_format] = Hash.new
    labelsEn[:config][:number_format][:decimal_separator] = "."
    labelsEn[:config][:number_format][:fraction_size] = "2"
    labelsEn[:config][:date_format] = 'MMM yyyy'
    labelsEn[:config][:time_format] = 'hh:mm a'
    labelsEn[:config][:date_format_js] = 'M Y'
    labelsEn[:config][:time_format_js] = 'h:i A'
    labelsEn[:config][:icon_color] = '#0000FF'
    
    labelsEn[:tags] = Hash.new
    labelsEn[:tags][:name] = "Name"
    labelsEn[:tags][:taggings_count] = "Quantity"
    labelsEn[:tags][:empty_msg] = "There is no tag."
    
    labelsEn[:messages] = Hash.new
    labelsEn[:messages][:attachments] = "Attachments:"
    labelsEn[:messages][:links] = "References:"
    labelsEn[:messages][:tags] = "Tags:"
    labelsEn[:messages][:awards] = "Awards:"
    labelsEn[:messages][:close_msg] = "Click again in the above line to close this popup."
    labelsEn[:messages][:tooltip] = "Click to see more information ..."
    labelsEn[:messages][:details] = "More information ..."
    
    labelsEn[:educations] = Hash.new
    labelsEn[:educations][:label] = "Education"
    labelsEn[:educations][:empty_msg] = "There is no education."
    labelsEn[:educations][:title] = "Title"
    labelsEn[:educations][:institution] = "Institution"
    labelsEn[:educations][:description] = "Description"
    labelsEn[:educations][:start] = "Start"
    labelsEn[:educations][:end] = "End"
    labelsEn[:educations][:details] = "Details"
    
    labelsEn[:educations][:academic_terms] = Hash.new
    labelsEn[:educations][:academic_terms][:label] = "Academic Term"
    labelsEn[:educations][:academic_terms][:empty_msg] = "There is no academic term for this education."
    labelsEn[:educations][:academic_terms][:name] = "Academic Term"
    labelsEn[:educations][:academic_terms][:start] = "Start"
    labelsEn[:educations][:academic_terms][:end] = "End"
    labelsEn[:educations][:academic_terms][:details] = "Details"
    
    labelsEn[:educations][:academic_terms][:academic_courses] = Hash.new
    labelsEn[:educations][:academic_terms][:academic_courses][:label] = "Courses"
    labelsEn[:educations][:academic_terms][:academic_courses][:empty_msg] = "There is no course for this academic term."
    labelsEn[:educations][:academic_terms][:academic_courses][:course] = "Course"
    labelsEn[:educations][:academic_terms][:academic_courses][:grade] = "Grade"
    labelsEn[:educations][:academic_terms][:academic_courses][:description] = "Description"
    labelsEn[:educations][:academic_terms][:academic_courses][:details] = "Details"
    
    labelsEn[:experiences] = Hash.new
    labelsEn[:experiences][:label] = "Experience"
    
    labelsEn[:experiences][:companies] = Hash.new
    labelsEn[:experiences][:companies][:label] = "Company"
    labelsEn[:experiences][:companies][:empty_msg] = "There is no company."
    labelsEn[:experiences][:companies][:name] = "Company"
    labelsEn[:experiences][:companies][:description] = "Description"
    labelsEn[:experiences][:companies][:first_job_date] = "Start"
    labelsEn[:experiences][:companies][:last_job_date] = "End"
    labelsEn[:experiences][:companies][:details] = "Details"
    
    labelsEn[:experiences][:companies][:jobs] = Hash.new
    labelsEn[:experiences][:companies][:jobs][:label] = "Jobs"
    labelsEn[:experiences][:companies][:jobs][:empty_msg] = "There is no job for this company."
    labelsEn[:experiences][:companies][:jobs][:title] = "Job"
    labelsEn[:experiences][:companies][:jobs][:description] = "Description"
    labelsEn[:experiences][:companies][:jobs][:start] = "Start"
    labelsEn[:experiences][:companies][:jobs][:end] = "End"
    labelsEn[:experiences][:companies][:jobs][:details] = "Details"
    
    labelsEn[:types_certificates] = Hash.new
    labelsEn[:types_certificates][:label] = "Certificates"
    labelsEn[:types_certificates][:empty_msg] = "There are no type of certificate."
    labelsEn[:types_certificates][:name] = "Name"
    labelsEn[:types_certificates][:description] = "Description"
    labelsEn[:types_certificates][:details] = "Details"
    
    labelsEn[:types_certificates][:certificates] = Hash.new
    labelsEn[:types_certificates][:certificates][:label] = "Certificates"
    labelsEn[:types_certificates][:certificates][:empty_msg] = "There is no certificate for this type of certificates."
    labelsEn[:types_certificates][:certificates][:title] = "Title"
    labelsEn[:types_certificates][:certificates][:description] = "Description"
    labelsEn[:types_certificates][:certificates][:issued] = "Issued"
    labelsEn[:types_certificates][:certificates][:details] = "Details"
    
    labelsEn[:publications] = Hash.new
    labelsEn[:publications][:label] = "Publications"
    labelsEn[:publications][:empty_msg] = "There is no publication."
    labelsEn[:publications][:title] = "Title"
    labelsEn[:publications][:description] = "Description"
    labelsEn[:publications][:published] = "Published"
    labelsEn[:publications][:details] = "Details"
    
    labelsEn[:projects] = Hash.new
    labelsEn[:projects][:label] = "Projects"
    labelsEn[:projects][:empty_msg] = "There is no project."
    labelsEn[:projects][:name] = "Name"
    labelsEn[:projects][:description] = "Description"
    labelsEn[:projects][:created] = "Created"
    labelsEn[:projects][:updated] = "Updated"
    labelsEn[:projects][:version] = "Version"
    labelsEn[:projects][:details] = "Details"
    
    labelsEn[:users] = Hash.new
    labelsEn[:users][:empty_msg] = "There is no user."
    
    @langEn = Language.find_by_acronym("en")
    @labelsEN = @langEn.labels
    
    @labelsEN.update(content: labelsEn.to_json)
    
    @str = labelsEn.to_json
    
    labelsBr = Hash.new
    
    labelsBr[:config] = Hash.new
    labelsBr[:config][:number_format] = Hash.new
    labelsBr[:config][:number_format][:decimal_separator] = ","
    labelsBr[:config][:number_format][:fraction_size] = "3"
    labelsBr[:config][:date_format] = 'MM/yyyy'
    labelsBr[:config][:time_format] = 'HH:mm'
    labelsBr[:config][:date_format_js] = 'm/Y'
    labelsBr[:config][:time_format_js] = 'H:i'
    labelsBr[:config][:icon_color] = '#2B65EC'
    
    labelsBr[:tags] = Hash.new
    labelsBr[:tags][:name] = "Nome"
    labelsBr[:tags][:taggings_count] = "Quantidade"
    labelsBr[:tags][:empty_msg] = "Não há tags cadastradas."
    
    labelsBr[:messages] = Hash.new
    labelsBr[:messages][:attachments] = "Anexos:"
    labelsBr[:messages][:links] = "Referências:"
    labelsBr[:messages][:tags] = "Tags:"
    labelsBr[:messages][:awards] = "Prêmios:"
    labelsBr[:messages][:close_msg] = "Clique novamente na linha acima para fechar esta janela."
    labelsBr[:messages][:tooltip] = "Clique para ver mais detalhes ..."
    labelsBr[:messages][:details] = "Mais informações ..."
    
    labelsBr[:educations] = Hash.new
    labelsBr[:educations][:label] = "Educação"
    labelsBr[:educations][:empty_msg] = "Não há registro de educação cadastrado."
    labelsBr[:educations][:title] = "Título"
    labelsBr[:educations][:institution] = "Instituição"
    labelsBr[:educations][:description] = "Descrição"
    labelsBr[:educations][:start] = "Início"
    labelsBr[:educations][:end] = "Término"
    labelsBr[:educations][:details] = "Detalhes"
    
    labelsBr[:educations][:academic_terms] = Hash.new
    labelsBr[:educations][:academic_terms][:label] = "Períodos Letivos"
    labelsBr[:educations][:academic_terms][:empty_msg] = "Não há períodos letivos cadastrados para esse nível."
    labelsBr[:educations][:academic_terms][:name] = "Período Letivo"
    labelsBr[:educations][:academic_terms][:start] = "Início"
    labelsBr[:educations][:academic_terms][:end] = "Término"
    labelsBr[:educations][:academic_terms][:details] = "Detalhes"
    
    labelsBr[:educations][:academic_terms][:academic_courses] = Hash.new
    labelsBr[:educations][:academic_terms][:academic_courses][:label] = "Cursos"
    labelsBr[:educations][:academic_terms][:academic_courses][:empty_msg] = "Não há cursos cadastrados para esse perído letivo."
    labelsBr[:educations][:academic_terms][:academic_courses][:course] = "Curso"
    labelsBr[:educations][:academic_terms][:academic_courses][:grade] = "Nota"
    labelsBr[:educations][:academic_terms][:academic_courses][:description] = "Descrição"
    labelsBr[:educations][:academic_terms][:academic_courses][:details] = "Detalhes"
    
    labelsBr[:experiences] = Hash.new
    labelsBr[:experiences][:label] = "Experiência"
    
    labelsBr[:experiences][:companies] = Hash.new
    labelsBr[:experiences][:companies][:label] = "Empresas"
    labelsBr[:experiences][:companies][:empty_msg] = "Não há empresas cadastradas"
    labelsBr[:experiences][:companies][:name] = "Empresa"
    labelsBr[:experiences][:companies][:description] = "Descrição"
    labelsBr[:experiences][:companies][:first_job_date] = "Data de Entrada"
    labelsBr[:experiences][:companies][:last_job_date] = "Data de Saída"
    labelsBr[:experiences][:companies][:details] = "Detalhes"
    
    labelsBr[:experiences][:companies][:jobs] = Hash.new
    labelsBr[:experiences][:companies][:jobs][:label] = "Cargos"
    labelsBr[:experiences][:companies][:jobs][:empty_msg] = "Não há cargos cadastrados para essa empresa."
    labelsBr[:experiences][:companies][:jobs][:title] = "Cargo"
    labelsBr[:experiences][:companies][:jobs][:description] = "Descrição"
    labelsBr[:experiences][:companies][:jobs][:start] = "Início"
    labelsBr[:experiences][:companies][:jobs][:end] = "Término"
    labelsBr[:experiences][:companies][:jobs][:details] = "Detalhes"
    
    labelsBr[:types_certificates] = Hash.new
    labelsBr[:types_certificates][:label] = "Certificados"
    labelsBr[:types_certificates][:empty_msg] = "Não há certificados cadastrados"
    labelsBr[:types_certificates][:name] = "Nome"
    labelsBr[:types_certificates][:description] = "Descrição"
    labelsBr[:types_certificates][:details] = "Detalhes"
    
    labelsBr[:types_certificates][:certificates] = Hash.new
    labelsBr[:types_certificates][:certificates][:label] = "Certificados"
    labelsBr[:types_certificates][:certificates][:empty_msg] = "Não há certificados cadastrados"
    labelsBr[:types_certificates][:certificates][:title] = "Título"
    labelsBr[:types_certificates][:certificates][:description] = "Descrição"
    labelsBr[:types_certificates][:certificates][:issued] = "Emissão"
    labelsBr[:types_certificates][:certificates][:details] = "Detalhes"
    
    labelsBr[:publications] = Hash.new
    labelsBr[:publications][:label] = "Publicações"
    labelsBr[:publications][:empty_msg] = "Não há publicações cadastradas."
    labelsBr[:publications][:title] = "Título"
    labelsBr[:publications][:description] = "Descrição"
    labelsBr[:publications][:published] = "Publicação"
    labelsBr[:publications][:details] = "Detalhes"
    
    labelsBr[:projects] = Hash.new
    labelsBr[:projects][:label] = "Projetos"
    labelsBr[:projects][:empty_msg] = "Não há projetos cadastrados."
    labelsBr[:projects][:name] = "Nome"
    labelsBr[:projects][:description] = "Descrição"
    labelsBr[:projects][:created] = "Criado"
    labelsBr[:projects][:updated] = "Atualizado"
    labelsBr[:projects][:version] = "Versão"
    labelsBr[:projects][:details] = "Detalhes"
    
    labelsBr[:users] = Hash.new
    labelsBr[:users][:empty_msg] = "Não há usuários cadastrados."
    
    @langBr = Language.find_by_acronym("br")
    @labelsBr = @langBr.labels
    
    @labelsBr.update(content: labelsBr.to_json)
    
    @str += "<br><br>"
    @str += labelsBr.to_json
    
    render text: @str
    
  end
  
end