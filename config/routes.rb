Rails.application.routes.draw do
  resources :tickets

  get 'welcome/index'
  root 'welcome#index'


  devise_for :operators#, :controllers => { registrations: 'registrations' }  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins#, :controllers => { registrations: 'registrations' }  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
