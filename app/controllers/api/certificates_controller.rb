class Api::CertificatesController < Api::BaseController
  
  def index
    render json: Certificate.all
  end
  
  def show
    render json: Certificate.find(params.require(:id))
  end
  
end