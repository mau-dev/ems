Rails.application.routes.draw do
  root 'employees#new'
  resources :employees
  resources :hierarchies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end