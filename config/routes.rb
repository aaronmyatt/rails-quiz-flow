Rails.application.routes.draw do
  root 'category#index'

  get 'questions/index'
  get 'drilldown/index'
  get 'category/index'
  get 'recommendation/index'

  post 'questions/form'
  post 'category/form'
  post 'drilldown/form'
end
