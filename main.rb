

#Please Note that we purposefully overcomplicated this project
#To learn, and because the instructions implied that we should use multiple classes.

require_relative "./answers"

class Start
  attr_accessor :answerarray
  include Answers
  # - User inputs question
  # - Computer outputs random answer
  # - User inputs "QUIT"
  # - Computer outputs a goodbye message and exits
  # - This class manages the other classes
  def initialize(answerarray)
    answerarray = answerarray
    puts "MAGIC 8 BALL\nplease enter a question"
    question = gets.chomp
    case question
    when "add_answers"
      Add_answers.new(answerarray)
    when "reset_answers"
      Reset_answers.new
    when  "print_answers"
      Print_answers.new(answerarray)
    when  "quit"
      puts "Goodbye"
    else 
      basic(answerarray)
    end
  end

end

class Add_answers
  attr_accessor :answerarray
  include Answers
  def initialize(answerarray)
    answerarray = answerarray
    add_answers(answerarray)
  end
  # - ability to add more answers:
  # - via easter egg question ("add_answers")
  # - do not let them add the same answer if the eight ball already has that answer
end

class Reset_answers
  include Answers
  def initialize
    reset_answers
  # - ability to reset answers back to the original bank (hint: think arr.clone)
  # - via easter egg question ("reset_answers")
  end
end

class Print_answers
  include Answers
  attr_accessor :answerarray
  def initialize(answerarray)
    answerarray = answerarray
    print_answers(answerarray)
  # - ability to have eight ball print all answers
  # - via easter egg question ("print_answers")
  end
end

Start.new(answerarray = ["Yes", "No", "Maybe later", "I don't know", "For sure"])