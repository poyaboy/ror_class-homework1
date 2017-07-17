begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin 
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input) 

  #接下來請把剩下的部份寫出來...

feedback_computer = ["R","P","S"]
computer_input = feedback_computer.sample
puts "電腦出的是#{computer_input}"

case 
 
  when user_input == computer_input
    puts "平手"
  when user_input == "R" && computer_input =="S"
    puts "你輸了"
  when user_input == "R" && computer_input =="P"
    puts "你贏了"
  when user_input == "P" && computer_input =="S"
    puts "你輸了"
  when user_input == "P" && computer_input =="R"
    puts "你贏了"
   when user_input == "S" && computer_input =="R"
    puts "你輸了"
  when user_input == "S" && computer_input =="P"
    puts "你贏了"
end


  #問使用者是否還要再玩 
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"


