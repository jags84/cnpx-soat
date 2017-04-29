class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email,:name,:last_name,:phone,:document_type,:document_id, presence: true
  has_many :policies
  has_many :payments

  private
    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation,:name,:last_name,:phone,:document_type,:document_id)
    end
end
