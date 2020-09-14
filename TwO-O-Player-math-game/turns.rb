require './players'
require './questions'

class Turns < Players
  attr_accessor :player1, :player2, :current_player, :question_master

  def initialize(player1, player2)
    @current_player = player2
    @question_master = player1
  end

  def run
    ques1 = Questions.new
    solution = ques1.generate_question(@question_master.name)
    answer = $stdin.gets.chomp.to_i
    check_answer(answer, solution)
    change_turn

  end


  def check_answer(answer, solution)
    if answer == solution
      puts "#{@question_master.name}: YES! You are correct."
    else
      @current_player.lives -= 1
      puts "#{@question_master.name}: Seriously? No!"
    end
  end

  def status(player1, player2)
    while true
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3\n----- NEW TURN -----"
      run
      if (player1.lives == 0 || player2.lives == 0)
        puts "----- GAME OVER -----\nGood bye!"
        return false
      end
    end
  end

  def change_turn
    temp = @current_player
    @current_player = @question_master
    @question_master = temp
  end

  # def new_turn
  # end

end