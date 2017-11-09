class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :avatar, :admin

  has_many :experiences
  has_many :posts
  has_many :answers
  has_many :rooms
end
