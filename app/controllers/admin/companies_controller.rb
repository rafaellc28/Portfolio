class Admin::CompaniesController < Admin::ApplicationController
  
  def index
    
=begin
    #create Company record
    @company = Company.create(:name => "name1", :description => "description1")
    
    # Stop if there was some error in creating this Company record
    if @company.errors.any?
      
      @str = error_message(@company, "Company")
      render text: @str
      
      return
      
    end
    
    # find the Company record created
    @company = Company.find_by_name("name1")
    
    # Add an attachment to this Company record
    @attachment = @company.attachments.create(:name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end

    @attachment.file = File.open("/local/path/to/file")
    @attachment.save
    
    # Add a link to this Company record
    @link = @company.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this Company record
    @award = @company.awards.create(:title => "Award Company 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this Company record
    @company.tag_list.add("Company Tag 1")
    
    # Remove a tag from this Company record
    # @company.tag_list.remove("Company Tag 1")
    
    # It is necessary to save the tags just added
    @company.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @company.reload
    
    @str = "Company:<br><br>Name: " + @company.name + 
      "<br>Description: " + @company.description + "<br><br><br>"
    
    @str += "Attachments: " + @company.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @company.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @company.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @company.tags.map{|e| e.name}.to_s + "<br><br>"
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
