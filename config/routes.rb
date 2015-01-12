Rails.application.routes.draw do
  devise_for :users
  
  namespace :api, defaults: {format: :json} do
    resources :educations, only: [:index, :show]
    resources :publications, only: [:index, :show]
    resources :certificates, only: [:index, :show]
    resources :types_certificates, only: [:index, :show]
    resources :companies, only: [:index, :show]
    resources :academic_periods, only: [:index, :show]
    resources :labels, only: [:index, :show]
    resources :tags, only: [:index, :show]
    resources :portfolio, only: [:index, :show]
    resources :languages, only: [:index, :show]
    resources :projects, only: [:index, :show]
    resources :users, only: [:index, :show]
    resources :spa, only: [:index]
  end
  
  namespace :admin do
    resources :users
    resources :educations
    resources :academic_terms
    resources :academic_courses
    resources :companies
    resources :jobs
    resources :types_certificates
    resources :certificates
    resources :publications
    resources :projects
    resources :labels
    resources :languages
  end
  
  root :to => redirect('/portfolio')
  
  match "/admin/users/:id/edit", to: "admin/users#update", via: :post
  match "/admin/users/:id", to: "admin/users#update", via: :post
  
  get "/admin/addLinks", to: "admin/users#addLinks"
  
  get '/admin' => 'admin/welcome#index'
  get '/admin/tests' => 'admin/tests#index'
  get '/' => 'templates#index'
  get '/portfolio' => 'templates#index'
  get '/templates/:path.html' => 'templates#template', :constraints => { :path => /.+/  }
  
end
