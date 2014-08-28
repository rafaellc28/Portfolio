class Api::TypesCertificatesController < Api::BaseController
  
  def index
    render json: TypesCertificate.all.to_json
  end
  
  def show
    render json: TypesCertificate.find(params.require(:id)).to_json
  end
  
end