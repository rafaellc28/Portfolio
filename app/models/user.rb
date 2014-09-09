class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :validatable, #:recoverable, :rememberable, 
         :timeoutable#, :lockable, :confirmable, :omniauthable
         
  #before_create :set_auth_token
  before_save :ensure_authentication_token
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  # add its links, attachments and awards to the json of this model
  # and include only the id, name e email fields
  def serializable_hash(options = nil)
    options = { 
      :only => [:id, :name, :email],
      :include => [:links, :attachments, :awards] 
    }.update(options)
    
    super options
  end
  
  private
    
=begin
    def set_auth_token  
      return if auth_token.present? 
      self.auth_token = generate_auth_token 
    end
    
    def generate_auth_token 
      loop do 
        token = SecureRandom.hex  
        break token unless self.class.exists?(auth_token: token)  
      end 
    end
=end
  
  private
    
    def ensure_authentication_token
      if authentication_token.blank?
        self.authentication_token = generate_authentication_token
      end
    end
    
    def generate_authentication_token
      loop do
        token = Devise.friendly_token
        break token unless User.where(authentication_token: token).first
      end
    end
    
end
