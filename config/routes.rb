Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #home page
  root "welcome#index"

  #about_me
  get '/about_me', to: "welcome#about_me"
  get '/contact', to: "welcome#contact"

  #skills
  get '/skills', to: "welcome#skills"
  get '/skills/mvc', to: "welcome#skills_mvc"

  #teams
  post '/skills/mvc/teams', to: "teams#create"
  get '/skills/mvc/teams/:team_id/edit', to: "teams#edit"
  patch '/skills/mvc/teams/:team_id/edit', to: "teams#update"

  #players
  post '/skills/mvc/teams/:team_id/player/new', to: "players#create"
end
