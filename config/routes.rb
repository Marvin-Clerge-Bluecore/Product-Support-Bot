Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'user#index', as 'user'
  # get '/', to: 'user#index', as: 'user'
  post '/update', to: 'user#update', as: 'update'
  get '/escalate', to: 'user#escalate', as: 'escalate'
end
