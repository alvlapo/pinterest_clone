class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :trackable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist
end
