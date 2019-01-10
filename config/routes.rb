Rails.application.routes.draw do


  resources :user

  root 'home#index'

  get 'home/index'
  get 'category', to: 'category#index', as: :category
  get 'drilldown', to: 'drilldown#index', as: :drilldown 
  get 'questions', to: 'questions#index', as: :questions
  get 'recommendation', to: 'recommendation#index', as: :recommendation

  resources :category_admin, path: '/admin/category'
  resources :drilldown_admin, path: '/admin/drilldown'
  resources :question_admin, path: '/admin/question'

  post 'home/form'
  post 'questions/form'
  post 'category/form'
  post 'drilldown/form'

end