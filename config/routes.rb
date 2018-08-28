Rails.application.routes.draw do
  root 'locations#new'
  get '/index' => 'locations#index'
  get '/new' => 'locations#new'
  post '/locations' => 'locations#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
