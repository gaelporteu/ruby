# current_time = Time.now
# while (current_time < Float::INFINITY)
#     puts "I love you"
# end

puts "Are you good? Please answer Y/N"
answer = gets.chomp.downcase
while (answer == "y")
    puts "I love you"
    break
end

while (answer == "n")
    puts "I still love you"
    break
end

while (1 < 2)
    puts "1 loves you"
    break
end