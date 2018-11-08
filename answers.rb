
#method that creates a list of answers
#method that takes user input to create new answers
#method that resets the answers back to default
#method that prints all the answers on the screen


module Answers
  
  def basic
    puts answerarray.sample
    Start.new
  end

  def add_answers(answerarray)
    #add new answers
    #redirects to start
    puts "enter a new answer"
    newanswer = gets.chomp
    answerarray << newanswer
  end

  def reset_answers
    #resets answers
    #redirects to start
    @answerarray = ["Yes", "No", "Maybe later", "I don't know", "For sure"]
    Start.new
  end

  def print_answers
    #prints all answers
    #redirects to start
  end

end
