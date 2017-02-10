Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  get 'student/index'
  resources :students, only: [:create] do
    collection do
      get :evaluation
      post :evaluation
    end
  end
  get 'login/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'home#index'
end
