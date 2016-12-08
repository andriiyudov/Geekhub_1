class User < ApplicationRecord
  after_create :create_profile


  has_secure_password
  has_many :cups
  has_one  :profile	

  #validates :name, :email, :password, :password_confirmation, presence: true

end