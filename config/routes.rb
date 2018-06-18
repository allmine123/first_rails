Rails.application.routes.draw do
  get 'hi/index'
  #lotto로 오면, home컨트롤러의 lotto로 가
  get '/lotto' => 'home#lotto'
  get '/index' => 'home#index'
  get '/welcome/:name' => 'home#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
