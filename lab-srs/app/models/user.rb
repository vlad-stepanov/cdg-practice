class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :reports
    validates :first_name, length: { maximum: 100 }
    validates :last_name, length: { maximum: 100 }
    validates :email, length: { maximum: 150 }, format: { with: URI::MailTo::EMAIL_REGEXP }

    def formatted_name
        "#{first_name} #{last_name} #{email}"
    end
end
