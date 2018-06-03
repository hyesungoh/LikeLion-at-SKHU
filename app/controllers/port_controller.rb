class PortController < ApplicationController
  def index
    @ports = Port.all
    @members = Member.all
  end

  def make
    @m = Member.all.order(:term)
  end

  def save
    # @p = params
    
    portfolio = Port.new
    portfolio.title = params[:title]
    portfolio.content = params[:content]
    
    # "members"=>{"5"=>"아무개", "2"=>"김세훈", "1"=>"오혜성"}
    members = params[:members]
    members.each do |id, m_name|
      member = Member.find_by name: m_name
      portfolio.members << member
    end
    portfolio.save
    
    redirect_to '/portfolio_setting'
  end

  def update
  end

  def delete
  end
end
