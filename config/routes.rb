Rails.application.routes.draw do
  root to: 'site#index'

  get 'index' => 'site#index'
  get 'books' => 'site#books'
  get 'course' => 'site#course'
  get 'teacher' => 'site#teacher'
  get 'article' => 'site#article'
  get 'about' => 'site#about'
  get 'articleDetails1' => 'site#articleDetails1'  
  match ':controller(/:action(/:id(.:format)))', :via => :all

  resource :wechat, only: [:show, :create]
end
