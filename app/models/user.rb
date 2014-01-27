class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :nickname, :provider, :url, :username, :image


  def self.find_for_vkontakte_oauth access_token
    if user = User.where(url:access_token.info.urls.Vkontakte).first
      user
    else
      user = User.create( provider:access_token.provider, 
                          url:access_token.info.urls.Vkontakte,
                          username:access_token.info.name,
                          nickname:access_token.extra.raw_info.domain,
                          email:access_token.uid+'@vk.com',
                          image: access_token.info.image,
                          password:Devise.friendly_token[0,20] )
    end
  end
  
end
