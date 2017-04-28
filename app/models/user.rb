class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name,:email,:password,:password_confirmation,:email, :password, :password_confirmation, :name, :last_name, :phone, :document_type, :document_id, presence: true

  private
    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation,:email, :password, :password_confirmation, :name, :last_name, :phone, :document_type, :document_id)
    end
end
