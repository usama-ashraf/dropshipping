Rails.application.routes.draw do
  devise_for :vendors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  resources :vendors_dashboard, only: [:index,:show] do
    collection do
      post :customer_issues
    end
    
    
  end
  
end
