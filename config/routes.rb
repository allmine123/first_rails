Rails.application.routes.draw do
  get 'hi/index'
  #lotto로 오면, home컨트롤러의 lotto로 가
  get '/lotto' => 'home#lotto'
  get '/index' => 'home#index'
  get '/welcome/:name' => 'home#welcome'
  get '/google' => 'home#google'
  get '/game' => 'home#game'
  get '/gameresult' =>'home#gameresult'
  get '/random' => 'home#random'
  get '/randomresult' => 'home#randomresult'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
