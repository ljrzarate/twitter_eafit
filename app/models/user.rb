class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :twits
  has_many :followers, class_name: "User", foreign_key: :follower_id
  has_many(:following, {class_name: "User", foreign_key: :following_id})
end
