Rails.application.routes.draw do

  devise_for :users, except: :new_user_registration_path
  resources :downloads
  resources :goals
  resources :trains
  resources :articles
  resources :contacts

  get 'oocran_deb',to:'welcome#oocran_deb'
  get 'oocran_rpm',to:'welcome#oocran_rpm'
  get 'oocran_tar',to:'welcome#oocran_tar'

  get 'bbu_deb',to:'welcome#bbu_deb'
  get 'bbu_rpm',to:'welcome#bbu_rpm'
  get 'bbu_tar',to:'welcome#bbu_tar'
  get 'bbu_nix',to:'welcome#bbu_nix'

  get 'pdsch_enodeb',to:'welcome#pdsch_enodeb'
  get 'pdsch_ue',to:'welcome#pdsch_ue'

  get 'index',to:'welcome#index'
  get 'team',to:'welcome#team'
  get 'get_start',to: 'welcome#get_start'
  get 'marketplace',to:'welcome#marketplace'
  get 'wiki',to:'welcome#wiki'
  get 'mail_list',to:'welcome#mail_list'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
