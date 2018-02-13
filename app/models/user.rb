class User < ActiveRecord::Base
  has_many :user_proyects, dependent: :destroy
  belongs_to :user
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
end
