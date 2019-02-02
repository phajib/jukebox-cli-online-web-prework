songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  help = <<-HELP
    I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program
    HELP
  puts help
end

def play(songs)
  puts "Please enter a song name or number: "
  user_input = gets.strip

  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each.with_index(1) do |song, song_number|
    puts "#{song_number}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  loop do
    puts "Please enter a command:"
    user_input = gets.downcase.strip

    case user_input
    when "exit"
      exit_jukebox
      break
    when "help"
      help
      break
    when "list"
      list(songs)
      break
    when "play"
      play(songs)
    else
      help
    end
  end
end
