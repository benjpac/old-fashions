class User < ApplicationRecord
  has_one :account
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_account, :send_welcome_message

  private

  def create_account
    # self.account.create
    Account.create(user_id: self.id)
  end

  def send_welcome_message
    UserMailer.welcome_email(self)
  end

end
