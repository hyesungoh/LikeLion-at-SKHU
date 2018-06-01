Rails.application.routes.draw do
  
  # member
  get '/members' => 'member#index'
  
  get '/member_setting' => 'member#make'
  
  get '/update_member/:member_id' => 'member#update'
  
  get '/delete_member/:member_id' => 'member#delete'
  
  get '/save_member' => 'member#save'
  
  # tutor
  get '/tutors' => 'tutor#index'
  
  get '/tutor_setting' => 'tutor#make'
  
  get '/update_tutor/:tutor_id' => 'tutor#update'
  
  get '/delete_tutor/:tutor_id' => 'tutor#delete'
  
  get '/save_tutor' => 'tutor#save'
  
  #portfolio
  get '/portfolios' => 'port#index'
  
  get '/portfolio_setting' => 'port#make'
  
  get '/update_portfolio/:port_id' => 'port#update'
  
  get '/delete_portfolio/:port_id' => 'port#delete'
  
  post '/save_portfolio' => 'port#save'
  
  root 'main#index'
end
