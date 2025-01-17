Rails.application.routes.draw do
  get 'issues/index'
  get 'issues/new'
  get 'issues/create'
  get 'issues/update'
  get 'issues/edit'
  get 'issues/destroy'
  get 'issues/show'
  resources :procedural_histories
  resources :facts

  root 'pages#home'

  get 'exhibits/index'
  get 'exhibits/show'
  get 'exhibits/new'
  post 'exhibits/create', to: 'exhibits#create'
  get 'exhibits/edit'
  post 'exhibits/destroy', to: 'exhibits#destroy'
  patch 'exhibits/update', to: 'exhibits#update'

  
  get 'depos/page', to: 'depos#page'

  get 'sandbox/foo'
  get 'sandbox/bar'
  get 'sandbox/yo'
  get 'of/sandbox'
  get 'member_search', to: 'members#member_search'

  get 'storyboard/number_misplaced'
  get 'storyboard/weeks_without_contract'
  get 'storyboard/formula'
  get 'storyboard/damages'
  get 'storyboard/dates_of_employment'
  resources :reviews
  resources :verifications
  resources :pos
  resources :document_dumps
  get 'con/change_status'
  get 'con/change_role'
  get 'con/change_rank'
  get 'con/home'
  get 'admin/home'
  get 'admin/users'
  get 'admin/toggle_status'
  get 'admin/toggle_role'
  get 'admin/edit'

  get 'prism/misplaced_contracts'
 
  devise_for :users
  resources :depos
  resources :pleadings
  get 'prism/com_types'
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

  get 'pages/unidentified'

  get 'pages/clients'
  get 'pages/review'
  get 'pages/current_employees'
  get 'pages/cce'
  get 'pages/all_commissioned_employees'
  get 'pages/cepp'
  get 'pages/cenk'
  get 'pages/cenfe'
  get 'pages/member_notes'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
