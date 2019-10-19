Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  devise_for :end_users, controllers: {
  unlocks: 'end_users/unlocks',
  omniauth: 'end_users/omniauth',
  registrations: 'end_users/registrations',
  passwords: 'end_users/passwords',
  confirmations: 'end_users/confirmations',
  sessions: 'end_users/sessions',
  }

  get 'tags/:tag', to: 'items#index', as: :tag  
  resources :end_users


  resources :end_users
  resources :items do
    resources :reviews, only: [:index, :create, :destroy,:show] do
      resources :comments, only: [:create, :destroy]
    end
  end
  resources :events
  

  resources :relationships, only: [:create, :destroy]

  resources :entries, only: [:create, :destroy]

  root to: 'items#about'
  get 'mypage' => 'end_users#mypage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
