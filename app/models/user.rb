class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :trackable, :validatable, :timeoutable
  
  #before_create :set_auth_token
  before_save :ensure_authentication_token
  
  validates_presence_of :name, :on => :update
  
  has_many :links, as: :link_ref
  has_many :attachments, as: :attachment_ref
  has_many :awards, as: :award_ref
  
  private
    
    # https://gist.github.com/josevalim/fb706b1e933ef01e4fb6
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
