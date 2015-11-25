Rails.application.routes.draw do
  resources :cars, :only => %i(index new create) do
    post :update_form, :on => :collection
  end
  root "cars#index"
end
