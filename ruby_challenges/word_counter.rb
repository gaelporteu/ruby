TEXT_FILE = "romeo-juliet.txt"
EXEPTION_FILE = "hamlet.txt"
# words = File.read(text_file).downcase.gsub(/[^a-z]/, " ").split

# Load the words from a file
def words_from_file(text_file)
    begin # Exeption handler if file is missing or not named properly
        File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
    rescue # Is what happens if there is an error
        puts "Give me #{text_file} and lets continue."
        exit # Exits the program
    end # End of exeption handler
end



# Load the list of words in the file
words = words_from_file(TEXT_FILE)
# uniq is an array method that removes duplicates
words_to_remove = words_from_file(EXEPTION_FILE).uniq

# removes all of the words that appear in the EXEPTION_FILE
words_to_remove.each do |word|
    words.delete word
end

# Create a dictionary of word counts
word_count = {}
# For each word in word_count using blocks
words.each do |word|
    # If this word is new, add it to word_count
    if word_count[word] == nil
        word_count[word] = 0
    end
    # ..else increment its count
    word_count[word] += 1
end

# puts word_count.sort_by {|key, value| order}.reverse[0..40] # this sorts from 0 to 40 [0...40] sorts from 0 to 39
word_count.sort_by {|word, count| count}
            .reverse[0...40]
            .each {|word, count| puts "#{word}: #{count}"}
    
    # # Another way of writing this if statement in Ruby 
    # word_count[word] = 0 unless word_count[word]
    # word_count[word] += 1


# In Ruby three dots in an array.length loop mean one less -1 => 0...array.length
# for i in 0...array.length
#     puts array[i]
# end

# Functional programming and blocks (essentially a callback)
# do |arguments|
#     # do something
# end

# Another example of blocks
# numbers = [1, 2, 3]
# numbers.each {|x| puts(x + 1)}
# returns 2, 3, 4 and [1, 2, 4]

# Loops in Ruby
# 1 for loops
#     for i in 0..5
#         puts
#     end
# => 0 1 2 3 4 5

# 2 while loops
# i = 0
# while i <= 5
#     puts i
#     i += 1
# end
# => 0 1 2 3 4 5

# 3 until loops
# i = 0
# until i > 5
#     puts i
#     i += 1
# end
# => 0 1 2 3 4 5

# 4 upto() method using a block
# 0.upto(5) do |i|
#     puts i
# end
# => 0 1 2 3 4 5

# 5 times is another loop method (there are more ways to loop in Ruby)
# 3.times do
#     puts "Yay!"
# end
# => Yay! Yay! Yay!

# Case and Ranges in Ruby are very useful
# case distance
# when (1..3)
#     category= "Walking distance"
# when (4..10)
#     category= "Short trip"
# else
#     category= "Long trip"
# end
# => case statements in Ruby can allow ranges

# More ways to deal with exeptions in Ruby Error Management
# begin # login function that can raise an exeption or error
#     login()
# rescue UnknownUsernameError => e # this will raise a unknown username error the e will store the typed username
#     log(e)
#     raise e
# else # if there is no error it says Welcome back
#     puts "Welcome Back!"
# ensure # this is a cleanup code if there was an error it reloads the login screen
#     log("User login")
# end
# end/