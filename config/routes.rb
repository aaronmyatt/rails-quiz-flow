Rails.application.routes.draw do

  
  resources :user

  root 'home#index'

  get 'home/index'
  get 'questions/index'
  get 'drilldown/index'
  get 'category/index'
  get 'recommendation/index'


  get 'category_admin/dashboard'
  resources :category_admin
  get 'category_admin/new'

  post 'home/form'
  post 'questions/form'
  post 'category/form'
  post 'drilldown/form'
  post "category_admin/dashboard"
end
