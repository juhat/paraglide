class User
  include Mongoid::Document

  devise :rememberable, :trackable, :omniauthable

  field :name,              type: String, :default => ""
  field :facebook_id,       type: String, :default => ""
  field :role,              type: String, :default => ""

  ## Rememberable
  field :remember_created_at, type: Time
  field :email,              type: String, :default => ""

  ## Trackable
  field :sign_in_count,      type: Integer, :default => 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 }

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where( email: auth.info.email ).first
    if user
      user.update_attributes!( name: auth.extra.raw_info.name, email: auth.info.email, facebook_id: auth.uid )
    else
      user = User.create!( name: auth.extra.raw_info.name, email: auth.info.email, facebook_id: auth.uid )
    end
    user
  end

  def admin?
    role == "admin"
  end
end
