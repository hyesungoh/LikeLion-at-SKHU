Rails.application.routes.draw do
  get 'main/index'
  
  get 'members' => 'member#index'
  
  get 'member_setting' => 'member#make'
  
  get 'update_member/:member_id' => 'member#update'
  
  get 'delete_member/:member_id' => 'member#delete'
  
  get 'save' => 'member#save'
  
  root 'main#index'
end
