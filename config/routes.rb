Rails.application.routes.draw do
 get '/', to: 'homes#top', as: 'root'
  resources :books
 


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
