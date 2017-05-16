help = [
  "use: uses an object",
  "open: opens an object that can be opened",
  "inspect: observe your current situation",
  "talk: talks to a character",
  "attack: attacks an enemy"
]

# Start Screen
puts ""
puts "Welcome to The Game of Death"
puts ""
puts "Type 'Start' to begin the game"

start = gets.chomp.downcase
while start != "start"
  puts "Type 'Start' to begin the game"
  start = gets.chomp.downcase
end
puts ""

# Introduction
puts <<EOF
The Game of Death is based on the incomplete Bruce Lee film of the same name, and works very much like a classic text-adventure game. You will have to figure out the right actions for each problem yourself.
EOF
puts ""
puts <<EOF
We start the game at the bottom of the Pagoda (a traditionally Asian, tiered-tower). You must face the challenge on each floor in order to reach the top floor and fight the boss.
EOF
puts ""
puts "If you are ever stumped during the game, type 'help' to see a list of some of the available commands"
puts ""
puts "*" * 20
puts ""

# Player Information
print "First things first, what is your name? "
name = gets.chomp
puts "Hello, #{name}, and welcome to the GAME OF DEATH!"
puts ""
puts "*" * 20
puts ""

# Level 1: Outside
puts "You stand outside of the pagoda, its giant, menacing door before you. What will you do?"
p1 = gets.chomp.downcase

while !p1.include?("open")
  case p1
  when "help"
    puts ""
    puts help
    puts ""
    p1 = gets.chomp.downcase
  when "inspect"
    puts "You stand outside of the pagoda, its giant, menacing door before you. What will you do?"
    p1 = gets.chomp.downcase
  else
    puts "#{p1} won't work now."
    p1 = gets.chomp.downcase
  end
end

puts ""
puts "You open the door, and walk inside."
puts ""
puts "*" * 20
puts ""

# Level 2: The First floor
puts "This is the first floor. It is a large dojo, and a small man stands in the center."
puts "It seems he has been waiting for you. What will you do?"
p2 = gets.chomp.downcase

while !p2.include?("talk")
  case p2
  when "help"
    puts ""
    puts help
    puts ""
    p2 = gets.chomp.downcase
  when "inspect"
    puts "This is the first floor. It is a large dojo, and a small man stands in the center."
    puts "It seems he has been waiting for you. What will you do?"
    p2 = gets.chomp.downcase
  else
    puts "#{p2} won't work now."
    p2 = gets.chomp.downcase
  end
end

puts ""
puts "The man greets you:"
puts "\"Hello, #{name}. I am the guardian of the first floor. In order to continue up the tower, you must answer my riddle.\""
puts ""
puts "\"What creature walks on four legs in the morning, 2 in the afternoon, and 3 in the evening?\""
puts ""
puts "The man awaits your response:"
p3 = gets.chomp.downcase
puts = ""

while !p3.include?("man")
  case p3
  when "help"
    puts ""
    puts help
    puts ""
    p3 = gets.chomp.downcase
  when "inspect"
    puts ""
    puts "The man greets you:"
    puts "\"Hello, #{name}. I am the guardian of the first floor. In order to continue up the tower, you must answer my riddle.\""
    puts ""
    puts "\"What creature walks on four legs in the morning, 2 in the afternoon, and 3 in the evening?\""
    puts ""
    puts "The man awaits your response:"
    p3 = gets.chomp.downcase
  else
    puts "Man: \"That is not correct\""
    p3 = gets.chomp.downcase
  end
end

puts "Man: \"That is correct. It seems you have bested me #{name}. You may continue to the second floor.\""
puts ""
puts "*" * 20
puts ""

# Level 3: The Second floor
puts "You climb the stairs to the second floor. Now you find yourself in a white room. There is large statue of a sphynx at the end of the room, and a chair in the middle."
puts "What will you do?"
p4 = gets.chomp.downcase
puts ""

while !p4.include?("chair")
  case p4
  when "help"
    puts ""
    puts help
    puts ""
    p4 = gets.chomp.downcase
  when "inspect"
    puts "You climb the stairs to the second floor. Now you find yourself in a white room. There is a large statue of a sphynx at the end of the room, and a chair in the middle."
    puts "What will you do?"
    p4 = gets.chomp.downcase
  when "use"
    puts "Use what? Be more specific."
    p4 = gets.chomp.downcase
  else
    puts "#{p4} won't work now."
    p4 = gets.chomp.downcase
  end
end

puts "You take a seat on the chair, and quietly wait."
puts ""
puts "Soon, the Sphynx statue starts moving. Its coming to life! Slowly, it walks up to you."
puts ""
puts "Sphynx: \"Aaah, a human! You must be #{name}. I am the Sphynx, guardian of this floor and devourer of men.\""
puts ""
puts "\"So you figured out that the first riddle's answer was #{p3}. As you probably know, that riddle is from the play 'Oedipus Rex'. But now, I have a harder riddle for you.\""
puts ""
puts "\"Get this riddle wrong three times, and I will eat you. Now for the riddle...\""
puts ""
puts "\"There are two sisters: one gives birth to the other and she, in turn, gives birth to the first. Who are the two sisters?\""
mistakes = 0
p5 = gets.chomp.downcase
puts ""

while !p5.include?("day and night")
  mistakes += 1
  if mistakes == 3
    puts ""
    puts "The Sphynx devours you. Maybe you should have googled the answer!"
    puts "*" * 20
    puts "GAME OVER"
    return p5
  end
  puts "Sphynx: \"That is wrong. You have #{3 - mistakes} try(ies) left."
  p5 = gets.chomp.downcase
end

puts ""
puts "Sphynx: \"That is correct! You are truly impressive, #{name}. No one has ever solved my riddle. You may now go the third and final floor.\""
puts ""
puts "The Sphynx becomes a statue once more. You make your way up the stairs to the third floor."
puts "*" * 20
puts ""

# Level 4: The Top floor

puts "You reach the top floor. A heavenly chorus starts playing as you notice stacks of computer servers everywhere."
puts ""
puts "As you walk further in, you see a Japanese man with glasses standing at the source of the heavenly chorus..."
puts ""
puts "... its Yukihiro \"Matz\" Matsumoto! You stand in awe in his glory. What do you do now?"
p6 = gets.chomp.downcase
puts ""

while !p6.include?("talk")
  case p6
  when "help"
    puts ""
    puts help
    puts ""
    p6 = gets.chomp.downcase
  when "inspect"
    puts ""
    puts "As you walk further in, you see a Japanese man with glasses standing at the source of the heavenly chorus..."
    puts ""
    puts "... its Yukihiro \"Matz\" Matsumoto! You stand in awe in his glory. What do you do now?"
    p6 = gets.chomp.downcase
  else
    puts "That won't work now! Don't embarrass yourself in front of Matz!"
    p6 = gets.chomp.downcase
  end
end

puts "Matz: \"Congratulations, #{name}, I have been waiting for you. I knew that you would be the chosen one to reach the top floor.\""
puts "\"In order to win the game, you just need to answer one final question.\""
puts ""
puts "Matz face turns serious, and the heavenly choir stops."
puts ""
puts "Matz: \"What is the best programming language IN THE WORLD?\""
puts ""
puts "Matz awaits your answer:"
p7 = gets.chomp.downcase
puts ""

unless p7.include?("ruby")
  puts "Matz: \"YOU IGNORANT FOOL!!!\""
  puts ""
  puts "Matz uses Ruby black magic to program you into an infinite loop, where you suffer for an eternity."
  puts "*" * 20
  puts "GAME OVER"
  return p7
end

puts ""
puts "Matz: \"Well done, #{name}! You have beat the Game of Death! Now, go celebrate by programming in Ruby.\""
puts ""
puts "*" * 20
puts ""
puts "CONGRATULATIONS, YOU WIN!"
puts ""
puts "A Jonas (slightly drunk) production"
