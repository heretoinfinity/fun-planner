class User < ActiveRecord::Base

  has_secure_password

  validates :username, { presence: true, length: {  maximum: 10 }, uniqueness: true }
  validates :email, { presence: true, uniqueness: true, length: {  maximum: 20 }, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Incorrect email format" } }
  validates :password, {  length: {minimum: 7, maximum: 50} }
end
