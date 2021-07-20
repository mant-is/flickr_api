Rails.application.routes.draw do
  root to: 'static_pages#search'
  get 'search', to: 'static_pages#search', as: 'search_flickr'

end
