Rails.application.routes.draw do
  get 'port/index'

  get 'port/make'

  get 'port/save'

  get 'port/updae'

  get 'port/delete'

  get 'tutor/index'

  get 'tutor/make'

  get 'tutor/save'

  get 'tutor/update'

  get 'tutor/delete'

  get 'main/index'
  
  get '/members' => 'member#index'
  
  get '/member_setting' => 'member#make'
  
  get '/update_member/:member_id' => 'member#update'
  
  get 'delete_member/:member_id' => 'member#delete'
  
  get '/save' => 'member#save'
  
  root 'main#index'
end
