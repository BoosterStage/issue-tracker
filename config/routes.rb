Rails.application.routes.draw do
  # resources :comments
  resources :comments
  resources :issues do
    member do
      put 'resolve'
    end
  end
  root to: 'issues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
