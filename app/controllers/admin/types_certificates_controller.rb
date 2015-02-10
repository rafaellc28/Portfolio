class Admin::TypesCertificatesController < Admin::ApplicationController
  include ErrorMessage
  include CacheSpa
  
  def index
=begin
    #create TypesCertificate record
    typesCertificate = TypesCertificate.create(:name => "name1", :description => "description1")
    
    # Stop if there was some error in creating this TypesCertificate record
    if typesCertificate.errors.any?
      
      @str = error_message(typesCertificate, "TypesCertificate")
      render text: @str
      
      return
      
    end
    
    # find the TypesCertificate record created
    typesCertificate = TypesCertificate.find_by_name("name1")
    
    # Add an attachment to this TypesCertificate record
    attachment = typesCertificate.attachments.create(:path => "assets/file", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if attachment.errors.any?
      
      @str = error_message(attachment, "Attachment")
      render text: @str
      
      return
      
    end
    
    attachment.file = File.open("public/assets/file")
    attachment.save
    
    # Add a link to this TypesCertificate record
    link = typesCertificate.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if link.errors.any?
      
      @str = error_message(link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this TypesCertificate record
    award = typesCertificate.awards.create(:title => "Award TypesCertificate 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if award.errors.any?
      
      @str = error_message(award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this TypesCertificate record
    typesCertificate.tag_list.add("TypesCertificate Tag 1")
    
    # Remove a tag from this TypesCertificate record
    # typesCertificate.tag_list.remove("TypesCertificate Tag 1")
    
    # It is necessary to save the tags just added
    typesCertificate.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    typesCertificate.reload
    
    # Cache the JSON response read by the API
    Rails.cache.write("spa", spa_api_response)
    
    @str = "TypesCertificate:<br><br>Name: " + typesCertificate.name + 
      "<br>Description: " + typesCertificate.description + "<br><br><br>"
    
    @str += "Attachments: " + typesCertificate.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + typesCertificate.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + typesCertificate.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + typesCertificate.tags.map{|e| e.name}.to_s + "<br><br>"
    @str += "<br>"
    
    render text: @str
=end
  end
  
end
