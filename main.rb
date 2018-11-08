
require_relative "./answers"

@answerarray = ["Yes", "No", "Maybe later", "I don't know", "For sure"]
class Start
  include Answers
  # - User inputs question
  # - Computer outputs random answer
  # - User inputs "QUIT"
  # - Computer outputs a goodbye message and exits
  # - This class manages the other classes
  def initialize()
    puts "MAGIC 8 BALL\nplease enter a question"
    question = gets.chomp.to_s
    case question
    when "add_answers"
      Add_answers.new
    when "reset_answers"
      Reset_answers.new
    when  "print_answers"
      Print_answers.new
    when  "quit"
      puts "Goodbye"
    else 
      basic
    end
  end

end

class Add_answers
  include Answers
  def initialize ()
    add_answers
  end
  # - ability to add more answers:
  # - via easter egg question ("add_answers")
  # - do not let them add the same answer if the eight ball already has that answer
  end

class Reset_answers
  include Answers
  # - ability to reset answers back to the original bank (hint: think arr.clone)
  # - via easter egg question ("reset_answers")
end

class Print_answers
  include Answers
  # - ability to have eight ball print all answers
  # - via easter egg question ("print_answers")
end

Start.new