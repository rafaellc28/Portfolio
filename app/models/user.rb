class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :trackable, :validatable, #:recoverable, :rememberable, 
         :timeoutable#, :lockable, :confirmable, :omniauthable
         
  #before_create :set_auth_token
  before_save :ensure_authentication_token
  
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
