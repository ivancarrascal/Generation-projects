Rails.application.routes.draw do
  get '/' => 'ironurls#index'
  get '/:id' => 'ironurls#redirect_url'
end
