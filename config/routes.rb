Rails.application.routes.draw do
  resources :ducks, only: [:index]
  get '/ducks/new', to: 'ducks#new', as: 'duck_new'
  get '/ducks/:id', to: 'ducks#show', as: 'duck'
  get '/ducks/:id/edit', to: 'ducks#edit'
  
  post '/ducks', to: 'ducks#create'
  patch '/ducks/:id', to: 'ducks#update'


  # resources :students, only: [:index]
  get '/students/new', to: 'students#new', as: 'student_new'
  post '/students', to: 'students#create'
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit'
  patch '/students/:id', to: 'students#update'
end
