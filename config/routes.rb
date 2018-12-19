Rails.application.routes.draw do

  resources :user

  root 'home#index'

  get 'home/index'
  get 'questions/index'
  get 'drilldown/index'
  get 'category/index'
  get 'recommendation/index'

  post 'home/form'
  post 'questions/form'
  post 'category/form'
  post 'drilldown/form'
end
