Rails.application.routes.draw do
  get 'con/change_status'
  get 'con/change_role'
  get 'con/change_rank'
  get 'con/home'
  get 'admin/home'
  get 'admin/users'
  get 'admin/toggle_status'
  get 'admin/toggle_role'
  get 'admin/edit'
 
  devise_for :users
  resources :depos
  resources :pleadings
  get 'prism/pdates'
  get 'prism/pcontract_type'
  get 'prism/pjob_title'
  get 'prism/pyear'
  get 'prism/pdraw'
  get 'prism/psalary'
  get 'prism/pkind'
  get 'prism/phire'
  get 'prism/pdischarge'
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

  get 'pages/clients'

  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
