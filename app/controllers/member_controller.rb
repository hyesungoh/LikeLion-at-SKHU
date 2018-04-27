class MemberController < ApplicationController
  def index
    @m = Member.all.order(:term)
    
  end
  
  def make
    @m = Member.all.order(:term)
  end
  
  def save
    m = Member.new
    m.name = params[:name]
    m.term = params[:term]
    m.save
    redirect_to '/member_setting'
  end
  
  def update
    m = Member.find(params[:member_id])
    m.name = params[:name]
    m.term = params[:term]
    m.save
    redirect_to "/member_setting"
  end
  
  def delete
    m = Member.find(params[:member_id])
    m.destroy
    redirect_to '/member_setting'
  end
end
