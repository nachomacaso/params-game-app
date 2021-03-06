Rails.application.routes.draw do
  get '/name' => 'params_games#name_game'
  get '/a_name' => 'params_games#a_name_game'
  get '/number' => 'params_games#number_game'
  get '/guess_number/:turkey' => 'params_games#url_guess'
  get '/show_form' => 'params_games#get_form'
  post '/send_form' => 'params_games#send_form'
  get '/show_number' => 'params_games#get_number'
  post '/send_number' => 'params_games#send_number'
  get 'count' => 'params_games#add_count'
end
