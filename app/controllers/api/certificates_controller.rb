class Api::CertificatesController < Api::BaseController
  
  def index
    render json: Certificate.all.to_json
  end
  
  def show
    render json: Certificate.find(params.require(:id)).to_json
  end
  
end