class Admin::ProjectsController < Admin::ApplicationController
  
  def index
    
=begin
    #create Project record
    @project = Project.create(:name => "name1", :description => "description1", "created" => "2014-07-07", "updated" => "2014-07-07")
    
    # Stop if there was some error in creating this Project record
    if @project.errors.any?
      
      @str = error_message(@project, "Project")
      render text: @str
      
      return
      
    end
    
    # find the Project record created
    @project = Project.find_by_name("name1")
    
    # Add an attachment to this Project record
    @attachment = @project.attachments.create(:path => "assets/file", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end
    
    @attachment.file = File.open("public/assets/file")
    @attachment.save
    
    # Add a link to this Project record
    @link = @project.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end

    # Add a award to this Project record
    @award = @project.awards.create(:title => "Award Project 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this Project record
    @project.tag_list.add("Project Tag 1")
    
    # Remove a tag from this Project record
    # @project.tag_list.remove("Project Tag 1")
    
    # It is necessary to save the tags just added
    @project.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @project.reload
    
    @str = "Project:<br><br>Name: " + @project.name + 
      "<br>Description: " + @project.description +
      "<br>Created: " + @project.created.to_s +
      "<br>Updated: " + @project.updated.to_s + "<br><br><br>"
    
    @str += "Attachments: " + @project.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @project.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @project.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @project.tags.map{|e| e.name}.to_s + "<br><br>"
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
