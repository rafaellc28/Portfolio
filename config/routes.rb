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
  end
  
  root :to => redirect('/portfolio')
  
  get '/admin' => 'admin/welcome#index'
  get '/admin/tests' => 'admin/tests#index'
  get '/' => 'templates#index'
  get '/portfolio' => 'templates#index'
  get '/educations' => 'templates#index'
  get '/educations/:id' => 'templates#index'
  get '/templates/:path.html' => 'templates#template', :constraints => { :path => /.+/  }
  
end
