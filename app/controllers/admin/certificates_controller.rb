class Admin::CertificatesController < Admin::ApplicationController
  
  def index
    
=begin
    # find the TypesCertificate record that this job will belong
    @typesCertificate = TypesCertificate.find_by_name("name1")
    
    #create Job record
    @certificate = @typesCertificate.certificates.create(:title => "title1", :description => "description1", :issued => "2014-03-01", :expire => "")
    
    # Stop if there was some error in creating this Job record
    if @certificate.errors.any?
      
      @str = error_message(@certificate, "Certificate")
      render text: @str
      
      return
      
    end
    
    # find the Job record created
    @certificate = @typesCertificate.certificates.find_by_title("title1")
    
    # Add an attachment to this Certificate record
    @attachment = @certificate.attachments.create(:name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end

    @attachment.file = File.open("/local/path/to/file")
    @attachment.save
    
    # Add a link to this Job record
    @link = @certificate.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this Job record
    # Note this award will be also inserted to the TypesCertificate for which this Job belongs
    @award = @certificate.awards.create(:title => "Award Certificate 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this Job record
    # Note this tag will be also inserted to the TypesCertificate for which this Job belongs
    @certificate.tag_list.add("Certificate Tag 1")
    
    # Remove a tag from this Job record
    # Note this tag will be not removed from the TypesCertificate for which this Job belongs
    # @certificate.tag_list.remove("Job Tag 1")
    
    # It is necessary to save the tags just added
    # Also, add the tags and awards to the parent of type TypesCertificate
    @certificate.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @certificate.reload
    
    @str = "Certificate:<br><br>Title: " + @certificate.title +
      "<br>Description: " + @certificate.description + 
      "<br>Issued: " + @certificate.issued.to_s +
      "<br>Expire: " + @certificate.expire.to_s + "<br><br><br>"
    
    @str += "Attachments: " + @certificate.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @certificate.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @certificate.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @certificate.tags.map{|e| e.name}.to_s + "<br><br>"
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
