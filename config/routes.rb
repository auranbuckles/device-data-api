Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'clients', to: 'api#clients'
  post 'client', to: 'api#client'
  get 'devices', to: 'api#devices'
  post 'device', to: 'api#device'
end
