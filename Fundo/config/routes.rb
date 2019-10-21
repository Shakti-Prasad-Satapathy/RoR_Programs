Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get "/profile", to: "welcome#profile"
  get "welcome/index"
  resources :notes
  resources :welcome
  authenticated :user do
    root "notes#index", as: "authenticated_root"
  end
  root "welcome#index"
end
