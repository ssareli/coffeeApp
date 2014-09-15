class Owner < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token
 

  has_many :tasks
  has_one :favorite
  has_many :projects
  has_and_belongs_to_many :shared_projects
  has_many :assigned_tasks

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { minimum: 5 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { minimum: 1 }
  validates :password, length: { minimum: 6 }

  has_secure_password

  def Owner.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Owner.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
 
  private

    def create_remember_token
      self.remember_token = Owner.digest(Owner.new_remember_token)
    end

  end

