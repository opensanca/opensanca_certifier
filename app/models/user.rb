class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :enrollments
  has_many :events, :through => :enrollments

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  validates :document, presence: true, unless: :new_record?
  validates :name,     presence: true

  def email_required?
    super && !new_record?
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name     = auth.info.name
      user.password = Devise.friendly_token[0, 20]
      user.provider = auth.provider
      user.uid      = auth.uid
    end
  end
end
