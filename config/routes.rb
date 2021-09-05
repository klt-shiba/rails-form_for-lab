Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, :school_classes, only: [:index, :show, :new, :create, :edit, :update]

  get '/students/:id', to: 'students#show'
  get '/students/new', to: 'students#new'
  get '/students/:id/edit', to: 'students#edit'
  get '/students', to: 'students#index'
  post '/students/new', to: 'students#create'
  patch '/students/:id', to: 'students#update'

  get '/school-classes/:id', to: 'school_classes#show', as: 'classes'
  get '/school-classes/new', to: 'school_classes#new'
  get '/school-classes/:id/edit', to: 'school_classes#edit'
  get '/school-classes', to: 'school_classes#index'
  post '/school-classes/new', to: 'school_classes#create'
  patch '/school-classes/:id', to: 'school_classes#update'
  

end
