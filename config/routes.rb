Rails.application.routes.draw do
 
 resources :teams do
  resources :drivers
  resources :contracts
  resources :deals
 end

 resources :sponsors do
 resources :teams
 resources :drivers
 resources :deals
end

end
