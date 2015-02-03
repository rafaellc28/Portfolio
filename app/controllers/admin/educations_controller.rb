class Admin::EducationsController < Admin::ApplicationController

  def index
    
=begin
    #create Education record
    @education = Education.create(:title => "title1", :institution => "institution1", :description => "description1", :start => "2014-03-01", :end => "2014-07-01")
    
    # Stop if there was some error in creating this Education record
    if @education.errors.any?
      
      @str = error_message(@education, "Education")
      render text: @str
      
      return
      
    end
    
    # find the Education record created
    @education = Education.find_by_title("title1")
    
    # Add an attachment to this Education record
    @attachment = @education.attachments.create(:path => "assets/file", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end
    
    @attachment.file = File.open("public/assets/file")
    @attachment.save
    
    # Add a link to this Education record
    @link = @education.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this Education record
    @award = @education.awards.create(:title => "Award1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this Education record
    @education.tag_list.add("Education Tag 1")
    
    # Remove a tag from this Education record
    # @education.tag_list.remove("Education Tag 1")
    
    # It is necessary to save the tags just added
    @education.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @education.reload
    
    @str = "Education:<br><br>Title: " + @education.title + 
      "<br>Institution: " + @education.institution +
      "<br>Description: " + @education.description + 
      "<br>Start: " + @education.start.to_s +
      "<br>End: " + @education.end.to_s + "<br><br><br>"
    
    @str += "Attachments: " + @education.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @education.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @education.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @education.tags.map{|e| e.name}.to_s + "<br><br>"
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
