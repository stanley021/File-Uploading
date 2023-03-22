Rails.application.routes.draw do
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


CarrierWaveExample::Application.routes.draw do
  resources :resumes, only: [:index, :new, :create, :destroy]
  root "resumes#index"
end