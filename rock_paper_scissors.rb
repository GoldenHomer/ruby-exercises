def rps(answer)
puts "You used...#{answer}!"
computer = ["Rock","Paper","Scissors"]
computer_answer = computer[rand(3)]
puts "Your rival uses..." + computer_answer.to_s + "!"

if (computer_answer == "Rock" && answer.downcase == "rock") || (computer_answer == "Paper" && answer.downcase == "paper") 
|| (computer_answer =="Scissors" && answer.downcase == "scissors")
    
    puts "It's a draw!"
elsif ((computer_answer == "Rock") && (answer.downcase == "paper")) || 
((computer_answer == "Paper") && (answer.downcase == "scissors")) || 
((computer_answer == "Scissors") && (answer.downcase == "rock"))

puts "You win!"
else
    puts "You lost..."
end
end
