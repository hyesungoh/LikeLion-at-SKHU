class TutorController < ApplicationController
  def index
    @t = Tutor.all.order(:term)
  end

  def make
    @t = Tutor.all.order(:term)
  end

  def save
    t = Tutor.new
    t.name = params[:name]
    t.term = params[:term]
    t.learning_term = params[:learning_term]
    t.save
    redirect_to '/tutor_setting'
  end

  def update
    t = Tutor.find(params[:tutor_id])
    t.name = params[:name]
    t.term = params[:term]
    t.learning_term = params[:learning_term]
    t.save
    redirect_to '/tutor_setting'
  end

  def delete
    t = Tutor.find(params[:tutor_id])
    t.destroy
    redirect_to '/member_setting'
  end
end
