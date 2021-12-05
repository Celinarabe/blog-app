Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # setting the homepage
  root 'entries#index'

  resources :articles do
    resources :comments
  end

  resources :entries do
    resources :tasks
  end
end
