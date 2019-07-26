class Player 
    def hand
        
	  puts "Enter a  number between 0 and 2"
	  puts "0:rock","1:scissors", "2:paper"
	  player_number = gets.chomp
    while player_number.to_i > 2 || player_number.to_i < 0 || player_number.gsub!(/\D/,"") || player_number == "" do
	  puts "Wrong number please try again:"
	  player_number = gets.chomp
	end
	  puts "player choose #{player_number}"
	  player_number
	end
  end
  
  class Enemy 
	def hand
	  computer_choice = rand(0..2)
	  puts "user choose #{computer_choice}"
	  computer_choice
	end
  end
  
  class Janken 
	def pon(player_hand, enemy_hand)
	  difference = player_hand.to_i - enemy_hand.to_i
	  final_answer =(difference + 3)%3
	  if final_answer == 2
	  puts "You won"
	  elsif final_answer == 1
	  puts "You lose."
	  else 
	  puts "Draw! No point awarded"
	  player = Player.new
	  enemy = Enemy.new
	  janken = Janken.new
	  janken.pon(player.hand, enemy.hand)
	  end
	end 
  end
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new
  janken.pon(player.hand, enemy.hand)