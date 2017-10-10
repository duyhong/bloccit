Rails.application.routes.draw do
  # get 'sponsored_post/show'
  #
  # get 'sponsored_post/new'
  #
  # get 'sponsored_post/edit'

  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_post, except: [:index]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
