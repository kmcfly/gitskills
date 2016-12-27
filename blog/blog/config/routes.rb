Rails.application.routes.draw do

  get 'student/index'

  get 'login/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'login#index'
end
