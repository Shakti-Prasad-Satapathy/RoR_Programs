Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  get "welcome/index"
  resources :notes
  authenticated :user do
    root "notes#index", as: "authenticated_root"
  end
  root "welcome#index"
end
