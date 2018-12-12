Rails.application.routes.draw do
  get 'drilldown/index'
  root 'category#index'
  get 'category/index'
end
