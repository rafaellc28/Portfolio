class Admin::JobsController < Admin::ApplicationController
  
  def index
    
=begin
    # find the Company record that this job will belong
    @company = Company.find_by_name("name1")
    
    #create Job record
    @job = @company.jobs.create(:title => "title1", :description => "description1", :start => "2014-03-01", :end => "2014-07-01")
    
    # Stop if there was some error in creating this Job record
    if @job.errors.any?
      
      @str = error_message(@job, "Job")
      render text: @str
      
      return
      
    end
    
    # find the Job record created
    @job = @company.jobs.find_by_title("title1")
    
    # Add an attachment to this Job record
    @attachment = @job.attachments.create(:path => "assets/attachment1.pdf", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end
    
    # Add a link to this Job record
    @link = @job.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this Job record
    # Note this award will be also inserted to the Company for which this Job belongs
    @award = @job.awards.create(:title => "Award Job 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this Job record
    # Note this tag will be also inserted to the Company for which this Job belongs
    @job.tag_list.add("Job Tag 1")
    
    # Remove a tag from this Job record
    # Note this tag will be not removed from the Company for which this Job belongs
    # @job.tag_list.remove("Job Tag 1")
    
    # It is necessary to save the tags just added
    # Also, add the tags and awards to the parent of type Company
    @job.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @job.reload
    
    @str = "Job:<br><br>Title: " + @job.title +
      "<br>Description: " + @job.description + 
      "<br>Start: " + @job.start.to_s +
      "<br>End: " + @job.end.to_s + "<br><br><br>"
    
    @str += "Attachments: " + @job.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @job.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @job.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @job.tags.map{|e| e.name}.to_s + "<br><br>"
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
