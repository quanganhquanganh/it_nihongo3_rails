Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/home'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :books
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
