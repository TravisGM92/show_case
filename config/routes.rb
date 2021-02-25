# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # home page
  root 'welcome#index'

  # about_me
  get '/about_me', to: 'welcome#about_me'
  get '/contact', to: 'welcome#contact'
  get '/projects', to: 'projects#index'
  get '/learning', to: 'learning#index'
end
