Rails.application.routes.draw do
  root to: 'top#index'

  get '/___replace_me___' => 'top#bookmarklet'

  get ':controller(/:action(/:id))(.:format)'
end
