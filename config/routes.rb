Rails.application.routes.draw do
  resources :cars, :only => %i(index new create)
  root "cars#index"
end
