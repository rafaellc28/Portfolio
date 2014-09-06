class Api::LabelsController < Api::BaseController
  
  def index
    
    labels = Labels.joins(:language).where("languages.active = true").order("languages.preference")
    
    json = {}
    
    labels.each do |label|
      
      # JSON.decode is necessary to remove the backslashes from the json generated below
      json[label.language.acronym] = ActiveSupport::JSON.decode(label.content)
      
    end
    
    render json: [json]
    
  end
  
end