Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # setting the homepage
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :entries
    end
  end

  resources :articles do
    resources :comments
  end
end

#   resources :entries do
#     resources :tasks
#   end
# end
