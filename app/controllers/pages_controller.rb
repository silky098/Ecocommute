class PagesController < ApplicationController
  # before_filter :authorize
  def home
  end

  def map
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
    marker.lat user.latitude
    marker.lng user.longitude
  end
  end
end
