Rails.application.routes.draw do
  get '/' => 'contacts#index'
  get '/contact/:contact_id/emails' => 'emails#index'
  get '/contact/:contact_id/phones' => 'phones#index'
end
