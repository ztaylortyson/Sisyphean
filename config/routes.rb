Rails.application.routes.draw do
  get 'prism/pdates'
  get 'prism/pcontract_type'
  get 'prism/pjob_title'
  get 'prism/pyear'
  get 'prism/pdraw'
  get 'prism/psalary'
  get 'prism/pkind'
  get 'prism/phire'
  get 'prism/mcontracts'
  resources :discoveries
  get 'exports/home'
  get 'exports/members'
  get 'exports/contracts'
  get 'exports/ecd'
  get 'exports/emd'
  resources :employees
  resources :contracts
  resources :members
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
