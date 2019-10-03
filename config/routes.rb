Rails.application.routes.draw do
  devise_for :end_users, controllers: {
  unlocks: 'end_users/unlocks',
  omniauth: 'end_users/omniauth',
  registrations: 'end_users/registrations',
  passwords: 'end_users/passwords',
  confirmations: 'end_users/confirmations',
  sessions: 'end_users/sessions',
  }
  devise_for :admins, controllers: {
  unlocks: 'admins/unlocks',
  omniauth: 'admins/omniauth',
  registrations: 'admins/registrations',
  passwords: 'admins/passwords',
  confirmations: 'admins/confirmations',
  sessions: 'admins/sessions',
  }

  resources :admins
  resources :end_users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
