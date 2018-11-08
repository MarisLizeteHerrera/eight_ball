
require_relative "./answers"


class Start
  include Answers
  # - User inputs question
  # - Computer outputs random answer
  # - User inputs "QUIT"
  # - Computer outputs a goodbye message and exits
  # - This class manages the other classes
end

class Add_answers
  include Answers
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