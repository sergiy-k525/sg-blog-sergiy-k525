class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  before_create :create_remember_token

VALID_NAME_REGEX = /\A[A-Z\d]{1}[a-z\d\s]*[a-z\d]{1}\z/i

  validates :name,
          :presence => {:message => " undefined. Enter your name, Do you wanna remain your anonymous?" },
          format: { with: VALID_NAME_REGEX },
          :length => { :maximum => 10, :message => "must be less than 10 characters"}

  # validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            :presence => {:message => " undefined." },
            format: { with: VALID_EMAIL_REGEX },
            # uniqueness: { case_sensitive: false }
            :uniqueness => {:message => " already exists."}

  has_secure_password

  validates :password,
            length: { minimum: 6, :message => " must be more than 6 characters"}

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
  self.remember_token = User.encrypt(User.new_remember_token)
  end
end
