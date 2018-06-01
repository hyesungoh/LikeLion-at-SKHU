class MemberController < ApplicationController
  def index
    @m = Member.all.order(:term)
  end
  
  def make
    @m = Member.all.order(:term)
  end
  
  def save
    Member.create(member_params)
    redirect_to '/member_setting'
  end

  def update
    m = Member.find(params[:member_id])
    m.name = params[:name]
    m.term = params[:term]
    m.istutor = params[:istutor]
    m.save
    redirect_to "/member_setting"
  end
  
  def delete
    m = Member.find(params[:member_id])
    m.destroy
    redirect_to '/member_setting'
  end
  
  private
    def member_params
      params.permit(:name, :term, :istutor)
    end
end
