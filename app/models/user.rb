class User < ActiveRecord::Base
  has_secure_password
  belongs_to :destination
  has_many :seats
  has_many :rides

  attr_accessor :password

  validates :password, :confirmation => true #password_confirmation attr


  # attr_accessible :email, :password, :password_confirmation

end
