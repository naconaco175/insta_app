Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/service_rule', to:  'static_pages#service_rule'
  get '/contact',      to:  'static_pages#contact'
  
end
