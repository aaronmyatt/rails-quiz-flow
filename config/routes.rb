Rails.application.routes.draw do
  root 'category#index'
  get 'questions/index'
  post 'questions/form'
  get 'drilldown/index'
  get 'category/index'
  get 'recommendation/index'
end
