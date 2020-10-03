Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #home page
  root "welcome#index"

  #about_me
  get '/about_me', to: "welcome#about_me"

  #skills
  get '/skills', to: "welcome#skills"
  get '/skills/mvc', to: "welcome#skills_mvc"

end
