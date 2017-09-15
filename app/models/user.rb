class User < ActiveRecord::Base

  has_secure_password

  validates :username, { presence: true, length: {  maximum: 10 }, uniqueness: true }
  validates :email, { presence: true, uniqueness: true, length: {  maximum: 20 }, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Incorrect email format" } }
  validates :password, {  length: {minimum: 7, maximum: 50} }
  validates :budget_amount, { numericality: { greater_than_or_equal_to: 0 } , allow_blank: true }
  validates :pay_period, { numericality: { greater_than_or_equal_to: 0 }, allow_blank: true }
end
