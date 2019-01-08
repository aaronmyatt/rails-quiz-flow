Rails.application.routes.draw do

  get 'drilldown_admin/index'
  resources :user

  root 'home#index'

  get 'home/index'
  get 'category', to: 'category#index', as: :category
  get 'drilldown', to: 'drilldown#index', as: :drilldown 
  get 'questions', to: 'questions#index', as: :questions
  get 'recommendation', to: 'recommendation#index', as: :recommendation

  resources :category_admin
  resources :drilldown_admin
  resources :question_admin

  post 'home/form'
  post 'questions/form'
  post 'category/form'
  post 'drilldown/form'
  post "category_admin/index"
  post "drilldown_admin/new"
  post "category_admin/new"

end