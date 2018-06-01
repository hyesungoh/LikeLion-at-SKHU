class TutorController < ApplicationController
  def index
    @t = Member.where("istutor > 0").order(:istutor)
  end
end
