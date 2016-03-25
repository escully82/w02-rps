require "pry"

# The interface introduces the game to the players. (1. Greet players = done!)

puts "\n\nHello and welcome to the Hunger Games, where losing is a big deal!"

##############################################################

# Here I request the players names with gets.chomp. This input will be stored
#   and used throughout the user/interface experience. I will also ask the
#   players if they know the rules of the game, using gets.chomp.
# This is steps 2 & 3. Done!

puts "\n\nSo, you there. What's your name? \n\n"
p1_name = gets.chomp
puts "\n\nThanks, #{p1_name}!"
puts "\n\nNow, what's your name? \n\n"
p2_name = gets.chomp
puts "\n\nThank you, #{p2_name}!\n\n"
puts "\n\n#{p1_name}, do you know the rules of rock, paper, scissors? \n\n"
p1_answer_1 = gets.chomp
puts "\n\n#{p2_name}, how about you? \n\n"
p2_answer_1 = gets.chomp

##############################################################

# Array that is called if either or both of the players answer no to the
#   question, do you know the rules? Also, checks off #4 from our checklist!

rules =
[ "The rules are simple. You have three choices: rock, paper, or scissors. You get to choose one and only one. Are you keeping up so far? If not, then it's time for you to go home and open up your Kid Games for Dummmies book. Anyway, rock beats scissors, scissors beats paper, and paper beats rock. You can do best of three or best of five. That means winning two out of three games or winning three out of five games. Got it? That's it. It is that simple. Don't cheat. Cheating is frowned upon here. Ok now, #{p1_name} and #{p2_name}, let's get this party started!!!" ]

rules.each do |rules|
end

##############################################################

# Array of choices from which p1 and p2 can choose. That being: rock, paper, and scissors.

choices = ["rock", "paper", "scissors"]
  choices.each do |input|
end


##############################################################

# Here I give the possible outcomes of the answer to the question, do you know
#   the rules.

if p1_answer_1 == "yes" && p2_answer_1 == "yes"
  puts "\n\nGreat! Let's get started!\n\n"
elsif p1_answer_1 == "no" && p2_answer_1 == "yes"
  puts "\n\nOk #{p1_name}, looks like someone took the short bus to school. Here are the rules. #{rules}\n\n"
elsif p1_answer_1 == "no" && p2_answer_1 == "no"
  puts "\n\nSeriously? Neither of you know? #{p1_name} and #{p2_name}, you two have got to be... Nevermind. Here are the rules. Idiots. #{rules}\n\n"
elsif p1_answer_1 == "yes" && p2_answer_1 == "no"
  puts "\n\nReally, #{p2_name}? You, my friend, led a deprived childhood. Oh well, here are the rules. #{rules}\n\n"
end



##############################################################

# We ask player for their move and get their input (5, 6)

puts "\n\n\n#{p1_name}, we'll start with you. Which would you like to choose? \n\n"
p1_move = gets.chomp
puts "\n\n#{p2_name}, it's your turn. Which would you like to choose? \n\n"
p2_move = gets.chomp
puts "#{p1_move}, #{p2_move}"

##############################################################

# Here I list all the possible outcomes that result from the game of
#   rock, paper, scissors. These are: win, lose, or tie.

if    p1_move == "rock"     && p2_move == "scissors"
  puts result = "\n\nPlayer one wins!\n\n"
elsif p1_move == "rock"     && p2_move == "paper"
  puts result = "\n\nPlayer two wins!\n\n"
elsif p1_move == "rock"     && p2_move == "rock"
  puts result = "\n\nOh snap, that's a tie. Try again!\n\n"
elsif p1_move == "scissors" && p2_move == "rock"
  puts "\n\nPlayer two wins!\n\n"
elsif p1_move == "scissors" && p2_move == "paper"
  puts "\n\nPlayer one wins\n\n"
elsif p1_move == "scissors" && p2_move == "scissors"
  puts "\n\nOh snap, that's a tie. Try again!\n\n"
elsif p1_move == "paper"    && p2_move == "rock"
  puts "\n\nPlayer one wins!\n\n"
elsif p1_move == "paper"    && p2_move == "scissors"
  puts "\n\nPlayer two wins!\n\n"
elsif p1_move == "paper"    && p2_move == "paper"
  puts "\n\nOh snap, that's a tie. Try again!\n\n"
elsif result == "Player one wins!"
  puts "\n\nCongratulations #{p1_name}!\n\n"
elsif result == "Player two wins!"
  puts "\n\nCongratulations #{p2_name}!\n\n"
elsif result == "Oh snap, that's a tie. Try again!"
  puts "\n\nOh snap, that's a tie. Try again!\n\n"
end



##############################################################

# Determine the result of the game

#if p1_move

#puts "\n\n\nOk #{}"
