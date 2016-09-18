class ParamsGamesController < ApplicationController
# query string params i.e. http://localhost:3000/name?response=Nate
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

# url segment params i.e. http://localhost:3000/guess_number/69
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
# form params
  def get_form
  end

  def send_form
    @message = params[:message]
  end

  def get_number

  end

  def send_number
    response = params[:number].to_i
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

  def add_count
    @count = params[:count].to_i
    @count_plus_one = @count + 1
  end
end
