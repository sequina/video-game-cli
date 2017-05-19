#The CLI Controller

class VideoGames::CLI

  def call
    list_games
    list_consoles
    menu
    goodbye
  end

  def list_games
    puts "Welcome to Video Games:"
    puts <<-DOC

    Hatsune Miku: Project DIVA Future Tone (PS4) - January 10
    Rise and Shine (Xbox One, PC) – January 13
    Road Redemption (PS4, Xbox One) - January 15
    2064: Read Only Memories (PS4) - January 17
    DOC
  end

  def list_consoles
    puts <<-DOC

    XBOX
    PS4
    GAMEBOY
    DOC
  end

  def menu
    input = nil
    puts "Enter the name from above of the console you are on: "
    puts "Type exit to exit the program"
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
