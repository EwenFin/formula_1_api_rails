Rails.application.routes.draw do
 
 resources :teams do
  resources :drivers
  resources :contracts
 end

 resources :sponsors

end
