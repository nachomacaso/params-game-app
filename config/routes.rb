Rails.application.routes.draw do
  get '/name' => 'params_games#name_game'
  get '/number' => 'params_games#number_game'
end
