Projectplanner::Application.routes.draw do
  
	get 'welcome/index'
  get 'gridview/show'
  devise_for :users
  resources :projects

  root 'welcome#index'
end
