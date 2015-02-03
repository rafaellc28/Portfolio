class Admin::PublicationsController < Admin::ApplicationController
  
  def index
    
=begin
    #create Publication record
    @publication = Publication.create(:title => "title1", :description => "description1", "published" => "2014-07-07")
    
    # Stop if there was some error in creating this Publication record
    if @publication.errors.any?
      
      @str = error_message(@publication, "Publication")
      render text: @str
      
      return
      
    end
    
    # find the Publication record created
    @publication = Publication.find_by_title("title1")
    
    # Add an attachment to this Publication record
    @attachment = @publication.attachments.create(:path => "assets/file", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end
    
    @attachment.file = File.open("public/assets/file")
    @attachment.save
    
    # Add a link to this Publication record
    @link = @publication.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this Publication record
    @award = @publication.awards.create(:title => "Award Publication 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this Publication record
    @publication.tag_list.add("Publication Tag 1")
    
    # Remove a tag from this Publication record
    # @Publication.tag_list.remove("Publication Tag 1")
    
    # It is necessary to save the tags just added
    @publication.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @publication.reload
    
    @str = "Publication:<br><br>Title: " + @publication.title + 
      "<br>Description: " + @publication.description +
      "<br>Published: " + @publication.published.to_s + "<br><br><br>"
    
    @str += "Attachments: " + @publication.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @publication.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @publication.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @publication.tags.map{|e| e.name}.to_s + "<br><br>"
    @str += "<br>"
    
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
