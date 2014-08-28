class Api::LabelsController < Api::BaseController
  
  def index
    
    labels = Hash.new
    
    labels[:educations] = Hash.new
    labels[:educations][:label] = "Educação"
    labels[:educations][:empty_msg] = "Não há registro de educação cadastrado."
    labels[:educations][:title] = "Título"
    labels[:educations][:institution] = "Instituição"
    labels[:educations][:description] = "Descrição"
    labels[:educations][:started_at] = "Início"
    labels[:educations][:done_at] = "Término"
    
    labels[:educations][:academic_periods] = Hash.new
    labels[:educations][:academic_periods][:label] = "Períodos Letivos"
    labels[:educations][:academic_periods][:empty_msg] = "Não há períodos letivos cadastrados para esse nível."
    labels[:educations][:academic_periods][:name] = "Período Letivo"
    labels[:educations][:academic_periods][:started_at] = "Início"
    labels[:educations][:academic_periods][:done_at] = "Término"
    
    labels[:educations][:academic_periods][:academic_records] = Hash.new
    labels[:educations][:academic_periods][:academic_records][:label] = "Cursos"
    labels[:educations][:academic_periods][:academic_records][:empty_msg] = "Não há cursos cadastrados para esse perído letivo."
    labels[:educations][:academic_periods][:academic_records][:course] = "Curso"
    labels[:educations][:academic_periods][:academic_records][:grade] = "Nota"
    labels[:educations][:academic_periods][:academic_records][:description] = "Descrição"
    
    labels[:experiences] = Hash.new
    labels[:experiences][:label] = "Experiência"
      
    labels[:experiences][:companies] = Hash.new
    labels[:experiences][:companies][:label] = "Empresas"
    labels[:experiences][:companies][:empty_msg] = "Não há empresas cadastradas"
    labels[:experiences][:companies][:name] = "Empresa"
    labels[:experiences][:companies][:description] = "Descrição"
      
    labels[:experiences][:companies][:jobs] = Hash.new
    labels[:experiences][:companies][:jobs][:label] = "Cargos"
    labels[:experiences][:companies][:jobs][:empty_msg] = "Não há cargos cadastrados para essa empresa."
    labels[:experiences][:companies][:jobs][:title] = "Cargo"
    labels[:experiences][:companies][:jobs][:description] = "Descrição"
    labels[:experiences][:companies][:jobs][:started_at] = "Início"
    labels[:experiences][:companies][:jobs][:done_at] = "Término"
    
    labels[:types_certificates] = Hash.new
    labels[:types_certificates][:label] = "Certificados"
    labels[:types_certificates][:empty_msg] = "Não há certificados cadastrados"
    labels[:types_certificates][:name] = "Nome"
    labels[:types_certificates][:description] = "Descrição"
    labels[:types_certificates][:certificates] = Hash.new
    labels[:types_certificates][:certificates][:label] = "Certificados"
    labels[:types_certificates][:certificates][:attachments] = "Anexos:"
    labels[:types_certificates][:certificates][:links] = "Referências:"
    labels[:types_certificates][:certificates][:empty_msg] = "Não há certificados cadastrados"
    labels[:types_certificates][:certificates][:tooltip] = "Clique para ver mais detalhes ..."
    labels[:types_certificates][:certificates][:title] = "Título"
    labels[:types_certificates][:certificates][:description] = "Descrição"
    labels[:types_certificates][:certificates][:issued_at] = "Emissão"
    
    labels[:publications] = Hash.new
    labels[:publications][:label] = "Publicações"
    labels[:publications][:empty_msg] = "Não há publicações cadastradas."
    labels[:publications][:title] = "Título"
    labels[:publications][:description] = "Descrição"
    labels[:publications][:published_at] = "Publicação"
    
    render json: [labels].to_json
    
  end
  
end