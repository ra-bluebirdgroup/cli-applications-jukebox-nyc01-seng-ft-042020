# Add your code here
def help
  puts  "I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end

def list (songs)
songs.each_index.select{|i| puts "#{(i+1)}. #{songs[i]}"}
end

def play(songs)
puts "Please enter a song name or number:"
input = gets.strip

songs.each_index.select{|i|
    if input.to_i == (i-1) || input == songs[i]
      puts "#{songs[i]}" #{(i+1)}.
    else
      puts "Invalid input, please try again"
      yield(play(songs))
    end

    }

end

def exit_jukebox
  puts "Goodbye"
end
