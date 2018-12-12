Rails.application.routes.draw do
  root 'category#index'
  get 'questions/index'
  get 'drilldown/index'
  get 'category/index'
end
