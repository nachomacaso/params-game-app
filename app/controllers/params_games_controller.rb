class ParamsGamesController < ApplicationController
  def name_game
    @response = params[:response].upcase
  end

  def a_name_game
    @response = params[:response]
    if @response != nil
      if @response.start_with?("A") || @response.start_with?("") 
        @message = "Hey your name starts with the first letter of the alphabet!!"
      end
    end
  end

  def number_game
    @response = params[:response]
    @answer = 57
    @right_message = "You guessed correctly! #{@response} was the correct answer!"
    @wrong_message = "Sorry try again"
  end

  def url_guess
    response = params[:turkey].to_i
    answer = 69

    if response == answer
      @message = "You got it correct!"
    elsif response < 1 || response > 100
      @message = "You are out of bounds."
    elsif response > answer
      @message = "Guess lower."
    elsif response < answer
      @message = "Guess higher."
    end
  end
end
