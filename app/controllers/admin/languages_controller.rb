class Admin::LanguagesController < Admin::ApplicationController
  include CacheSpa
  
  def index
    
=begin
    language = Language.create(name: "Português", acronym: "pt", description: "", preference: 3)
    
    # Stop if there was some error in creating this Language record
    if language.errors.any?
      
      @str = error_message(language, "Project")
      render text: @str
      
      return
      
    end
    
    # Cache the JSON response read by the API
    Rails.cache.write("spa", spa_api_response)

    # find the Language record created
    language = Language.find_by_acronym("pt")
    
    @str = "Language:<br><br>Name: " + language.name +
      "<br>Acronym: " + language.acronym +
      "<br>Description: " + language.description +
      "<br>Preference: " + language.preference.to_s +
      "<br>Active: " + language.active.to_s + "<br><br><br>"
    
    render text: @str
=end
  end
  
end