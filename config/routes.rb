Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations, :passwords, :mailer]
  
  devise_scope :user do
    get "sign_out", to: "educations#destroy"
  end
  
  namespace :api, defaults: {format: :json} do
    resources :educations, only: [:index, :show]
    resources :publications, only: [:index, :show]
    resources :certificates, only: [:index, :show]
    resources :types_certificates, only: [:index, :show]
    resources :companies, only: [:index, :show]
    resources :academic_periods, only: [:index]
    resources :labels, only: [:index, :show]
    resources :tags, only: [:index, :show]
    resources :spa, only: [:index]
    resources :languages, only: [:index]
  end
  
  root :to => redirect('/spa')
  
  get '/tests' => 'tests#index'
  get '/' => 'templates#index'
  get '/spa' => 'templates#index'
  get '/educations' => 'templates#index'
  get '/educations/:id' => 'templates#index'
  get '/templates/:path.html' => 'templates#template', :constraints => { :path => /.+/  }
  
end
