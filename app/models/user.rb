class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :ldap_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: :true, uniqueness: { case_sensitive: false }

  def email_required?
    false
  end
end
