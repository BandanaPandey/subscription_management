Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subscribers
  get '/premium', to: 'premium#index'
end
