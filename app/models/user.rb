class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address, :avatar, :biography, :birthday, :birthmonth, :birthyear, :cid, :country_id, :is_coach, :name, :phone, :slug, :state_id, :town, :username, :website, :provider, :uid

  has_many :questions, :foreign_key => :user_id, :dependent => :destroy
  has_many :answers, :foreign_key => :user_id, :dependent => :destroy
  has_many :projects, :foreign_key => :user_id, :dependent => :destroy
  has_many :backers, :foreign_key => :user_id, :dependent => :destroy
  
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :avatar, AvatarUploader

  acts_as_taggable
  acts_as_taggable_on :skills, :interests


  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:auth.extra.raw_info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20]
                           )
    end
    user
  end



  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end



  
end
