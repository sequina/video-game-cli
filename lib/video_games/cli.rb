#The CLI Controller

class VideoGames::CLI

  def list_games
    puts "Welcome to Video Games:"
    puts @games = VideoGames::Games.list_games
    # @games.each.with_index(1) do |game, i|
    #   puts "#{i}. #{game.name} - #{game.console} - #{game.year}"
    # end
  end

  def call
    list_games
    # list_consoles
    menu
    goodbye
  end
  # def list_consoles
  #   puts <<-DOC
  #
  #   XBOX
  #   PS4
  #   PC
  #   DOC
  # end

  def menu
    input = nil
    puts "Enter the name from above of the console you are on: "
    puts "Type exit to exit the program"

    # if input != "exit"
    #   input = gets.strip.downcase
    # elsif input == "xbox"
    #   puts list_games.xbox
    # elsif input == "PS4"
    #   puts list_games.PS4
    # elsif input == "PC"
    #   puts list_games.PC
    # end



    while input != "exit"
      input = gets.strip.downcase
      case input
        when "xbox"
          puts "List of XBOX games with release dates"
        when "ps4"
          puts "List of XBOX games with release dates"
        else
          puts "Please choose a console from the list above"
        end
      end
    end

  def goodbye
    puts "See you later!"
  end

end
