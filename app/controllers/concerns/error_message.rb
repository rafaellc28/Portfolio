module ErrorMessage
  extend ActiveSupport::Concern
  
  def error_message(resource, name)
    
    message = "It was not possible to create the " + name + " record.<br><br>"
    
    if resource.errors.any?
      
      resource.errors.full_messages.each do |msg|
        
        message += msg + "<br>"
        
      end
      
    end
    
    message
    
  end
  
end
