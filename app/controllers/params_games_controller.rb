class ParamsGamesController < ApplicationController
  def name_game
    @response = params[:response]
    @message = "Hey your name starts with the first letter of the alphabet!!"
  end
  def number_game
    @response = params[:response]
    @answer = 57
    @right_message = "You guessed correctly! #{@response} was the correct answer!"
    @wrong_message = "Sorry try again"
  end
end
