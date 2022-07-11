class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :organization_user_join, foreign_key: :user_id
end
