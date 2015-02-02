class Api::TypesCertificatesController < Api::BaseController
  
  def index
    render json: TypesCertificate.all
  end
  
  def show
    render json: TypesCertificate.find(params.require(:id))
  end
  
end