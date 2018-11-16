Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  # =================================================
  #             ROUTES FOR Alien MODEL
  # =================================================
get '/aliens', to: 'aliens#index'
get '/aliens/:id', to: 'aliens#show'
post '/aliens', to: 'aliens#createOne'
delete '/aliens/:id', to: 'aliens#delete'
put '/aliens/:id', to: 'aliens#update'


end
