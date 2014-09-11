class Admin::LanguagesController < Admin::ApplicationController
  
  def index
    
=begin
    @language = Language.create(name: "Português", acronym: "pt", description: "", preference: 3)
    
    # Stop if there was some error in creating this Language record
    if @language.errors.any?
      
      @str = error_message(@language, "Project")
      render text: @str
      
      return
      
    end
    
    # find the Language record created
    @language = Language.find_by_acronym("pt")
    
    @str = "Language:<br><br>Name: " + @language.name +
      "<br>Acronym: " + @language.acronym +
      "<br>Description: " + @language.description +
      "<br>Preference: " + @language.preference.to_s +
      "<br>Active: " + @language.active.to_s + "<br><br><br>"
    
    render text: @str
=end
  end
  
  private
    
    def error_message(resource, name)
      
      @message = "It was not possible to create the " + name + " record.<br><br>"
      
      if resource.errors.any?
        
        resource.errors.full_messages.each do |msg|
          
          @message += msg + "<br>"
          
        end
        
      end
      
      @message
      
    end
    
end