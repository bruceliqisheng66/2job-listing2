Rails.application.routes.draw do
  resources :welcome do
  end
  devise_for :users

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end

      resources :resumes
    end
  end

  resources :jobs do
    collection do
      get :search
    end
  end

  root 'welcome#index'
  get 'about' => 'about#index'
end
