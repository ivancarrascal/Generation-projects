Rails.application.routes.draw do
  root 'concerts#index'
  resources :concerts
  get 'concerts/:id/like', to: 'concerts#like'
  get 'popularConcerts', to: 'concerts#popularConcerts'
  get 'allConcerts', to: 'concerts#allConcerts'
end