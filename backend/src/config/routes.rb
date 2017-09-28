Rails.application.routes.draw do
  scope format: true, defaults: { format: 'json' } do
    devise_for :users
  end
end
