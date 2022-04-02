Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'student/index'=>'student#index'
  root 'student#index'

  post 'students'=>'tweets#create'
  

#resources :students, only :index

end
