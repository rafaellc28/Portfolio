class Api::LabelsController < Api::BaseController
  
  def index
    
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
    
    render json: [{:br => labels, :en => labelsEn}]
    
  end
  
end