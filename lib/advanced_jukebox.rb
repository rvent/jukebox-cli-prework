#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/05.mp3',
"Blue" => '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/rvent/.atom/.learn-ide/home/restful-revert-5296/jukebox-cli-prework/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
    system "open #{songs[song_choice]}"
  elsif (song_choice.to_i > 0) && (song_choice.to_i <= songs.length)
    puts "Playing #{songs[songs.keys[song_choice.to_i - 1]]}"
    system "open #{songs[song_choice]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.keys do |song, number|
    puts "#{number + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    case command
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  exit_jukebox
end




def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  #this method is the same as in jukebox.rb
end
