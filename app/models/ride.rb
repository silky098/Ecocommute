class Ride < ActiveRecord::Base

  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]

  has_many :seats   # links us to users which are passengers
  belongs_to :user  # driver

  def passengers
    # get passengers for this ride, through seats

  end

end
