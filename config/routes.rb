Rails.application.routes.draw do
  root 'converses#index'
  get 'convert', to: 'converses#convert'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
