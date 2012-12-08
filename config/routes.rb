Paraglide::Application.routes.draw do
  resources :places

  devise_for :users

  root :to => 'places#index'
end
