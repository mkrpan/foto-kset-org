class LandingController < ApplicationController
  def index
    @course = Season.course.for_time(Time.zone.now).first
    @workshop = Season.workshop.for_time(Time.zone.now).first
  end
end
