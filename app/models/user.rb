class User < ActiveRecord::Base

  belongs_to :destination
  has_many :seats
  has_many :rides

  # geocoded_by :address
  # after_validation :geocode

  has_secure_password
  validates :email, :presence => true, :uniqueness => true

end
