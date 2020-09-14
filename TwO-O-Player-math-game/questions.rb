require './turns'

class Questions
  attr_accessor :number_one, :number_two

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
  end

  def generate_question(question_master)

    puts "#{question_master}: What does #{number_one} + #{number_two} equal?"

    solution = @number_one + @number_two
    return solution
  end
end