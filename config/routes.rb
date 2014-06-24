Projectplanner::Application.routes.draw do
  
  get "gridview/show"
  devise_for :users
  resources :projects

  root'projects#index'
end
