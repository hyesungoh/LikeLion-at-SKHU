class PortController < ApplicationController
  def index
    @ports = Port.all
  end

  def make
    @m = Member.all.order(:term)
  end

  def save
    p = Port.new
    p.title = params[:title]
    p.content = params[:content]
    
    m = Member.find_by name: params[:members]
    p.members << m
    p.save
    
    redirect_to '/portfolios'
  end

  def update
  end

  def delete
  end
end
