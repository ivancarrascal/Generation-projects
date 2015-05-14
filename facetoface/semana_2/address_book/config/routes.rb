Rails.application.routes.draw do
  get '/' => 'contacts#home'
  get '/index' => 'contacts#index'
end
