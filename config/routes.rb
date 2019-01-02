Rails.application.routes.draw do


  get 'questions_admin/index'
  get 'questions_admin/dashboard'
  get 'questions_admin/new'
  get 'drilldown_admin/index'
  resources :user

  root 'home#index'

  get 'home/index'
  get 'questions/index'
  get 'drilldown/index'
  get 'category/index'
  get 'recommendation/index'


  get 'category_admin/index'
  resources :category_admin
  resources :drilldown_admin
  get 'category_admin/new'

  post 'home/form'
  post 'questions/form'
  post 'category/form'
  post 'drilldown/form'
  post "category_admin/index"
  post "drilldown_admin/new"
  post "category_admin/new"
end
