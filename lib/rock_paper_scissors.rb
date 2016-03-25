require "pry"

# In this method, driver asks players for their names with gets.chomp and stores
#    them for later use

def ask_name
  puts "\n\nSo, you there. What's your name? \n\n"
  name = gets.chomp.capitalize
  puts "\n\nThanks, #{name}!"
  return name
end

##############################################################

# In this method the driver asks wheter the players know the rules to the game

def rules_knowledge_question(name)
  puts "\n\n#{name} do you know the rules of rock, paper, scissors? \n\n"
  answer = gets.chomp.downcase
  return answer
end

##############################################################

# The interface introduces the game to the players. (1. Greet players = done!)
# =>                        GREETING
# This is the BEGINNING! The FIRST thing that the user sees.

puts "\n\nHello and welcome to the Hunger Games: Rock, Paper, Scissors Edition; where losing is a big deal!"

##############################################################

# Interface asks for players one and twos name, respectively
#
# Refers to the ask_name method

p1_name = ask_name

p2_name = ask_name

##############################################################

# String that is called if either or both of the players answer no to the
#   question, do you know the rules? Also, checks off #4 from our checklist!

rules =
 "The rules are simple. You have three choices: rock, paper, or scissors. You get to choose one and only one. Are you keeping up so far? If not, then it's time for you to go home and open up your Kid Games for Dummmies book. Anyway, rock beats scissors, scissors beats paper, and paper beats rock. You can do best of three or best of five. That means winning two out of three games or winning three out of five games. Got it? That's it. It is that simple. Don't cheat. Cheating is frowned upon here. Ok now, #{p1_name} and #{p2_name}, let's get this party started!!!"

##############################################################

# In this step I'm getting the answer to rules knowledge question
#
# Refers to the rules_knowledge_question method

p1_answer_1 = rules_knowledge_question(p1_name)

p2_answer_1 = rules_knowledge_question(p2_name)

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
p1_move = gets.chomp.downcase
while p1_move != "rock" && p1_move != "paper" && p1_move != "scissors"
  puts "\n\nSeriously #{p1_name}? That is not a valid move. Please enter: rock, paper, or scissors. How hard is that?\n\n"
  p1_move = gets.chomp.downcase
end

puts "\n\n#{p2_name}, it's your turn. Which would you like to choose? \n\n"
p2_move = gets.chomp.downcase
while p2_move != "rock" && p2_move != "paper" && p2_move != "scissors"
  puts "\n\nSeriously #{p2_name}? That is not a valid move. Please enter: rock, paper, or scissors. How hard is that?\n\n"
  p2_move = gets.chomp.downcase
end

puts "\n\n#{p1_name} chose #{p1_move} and #{p2_name} chose #{p2_move}\n\n"


##############################################################

# Here I list all the possible outcomes that result from the game of
#   rock, paper, scissors. These are: win, lose, or tie.

if    p1_move == "rock"     && p2_move == "scissors"
  puts "\n\n#{p1_name} wins!!!\n\n"
elsif p1_move == "rock"     && p2_move == "paper"
  puts "\n\n#{p2_name} wins!\n\n"
elsif p1_move == "rock"     && p2_move == "rock"
  puts "\n\nOh snap, #{p1_name} and #{p2_name} tied. Try again!\n\n"
elsif p1_move == "scissors" && p2_move == "rock"
  puts "\n\n#{p2_name} wins!\n\n"
elsif p1_move == "scissors" && p2_move == "paper"
  puts "\n\n#{p1_name} wins\n\n"
elsif p1_move == "scissors" && p2_move == "scissors"
  puts "\n\nOh snap, #{p1_name} and #{p2_name} tied. Try again!\n\n"
elsif p1_move == "paper"    && p2_move == "rock"
  puts "\n\n#{p1_name} wins!\n\n"
elsif p1_move == "paper"    && p2_move == "scissors"
  puts "\n\n#{p2_name} wins!\n\n"
elsif p1_move == "paper"    && p2_move == "paper"
  puts "\n\nOh snap, #{p1_name} and #{p2_name} tied. Try again!\n\n"
end


##############################################################
