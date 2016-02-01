Rails.application.routes.draw do
  resources :news_articles
  root 'news_articles#index'
end
