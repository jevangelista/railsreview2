Rails.application.routes.draw do

  root to: "sites#index"

  get "/users", to: "users#index", as: "users"

  get "/users/new", to: "users#new", as: "new_user"  

  post "users", to: "users#create"

  get "/users/:id", to: "users#show", as: "user"

  get "/users/:id/edit", to: "users#edit", as: "edit_user"

  # The update route
  patch "/users/:id", to: "users#update" 

  # the destroy route
  delete "/users/:id", to: "users#destroy" 

  #sessions routes

  get "/sign_in", to: "sessions#new"  

  post "/sessions", to: "sessions#create"

  delete "/sessions", to: "sessions#destroy"

  #articles routes

   get "/articles", to: "articles#index", as: "articles"

   get "/articles/new", to: "articles#new", as: "new_article" 

   post "articles", to: "articles#create"

  get "/articles/:id", to: "articles#show", as: "article"

  get "/articles/:id/edit", to: "articles#edit", as: "edit_article"

   # The update route
  patch "/articles/:id", to: "articles#update" 

  # the destroy route
  delete "/articles/:id", to: "articles#destroy" 

  #sites routes

  get "/", to: "sites#index"

  get "/about", to: "sites#about"

  get "/contact", to: "sites#contact"

  
end


# get 'sessions/new'

#   get 'sessions/create'

#   get 'articles/index'

#   get 'articles/new'

#   get 'articles/create'

#   get 'articles/show'

#   get 'articles/edit'

#   get 'articles/update'

#   get 'articles/destroy'

#   get 'users/index'

#   get 'users/new'

#   get 'users/create'

#   get 'users/show'

#   get 'users/edit'

#   get 'users/update'

#   get 'users/destroy'

#   get 'sites/index'

#   get 'sites/about'

#   get 'sites/contact'

#   get 'index/new'

#   get 'index/create'

#   get 'index/show'

#   get 'index/edit'

#   get 'index/update'

#   get 'index/destroy'

#   get 'index/about'

#   get 'index/contact'