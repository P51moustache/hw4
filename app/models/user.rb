class User < ApplicationRecord
  has_secure_password
  has_many :places, dependent: :destroy
  has_many :entries, dependent: :destroy
  
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true
end
