class VideoGames::Games
  attr_accessor :name, :price

  def self.list_games
    #should return list of games from site and its data
    self.scrape_games
  end

  def self.scrape_games
    games = []

    games << self.scrape_games


    games

  end

  def self.scrape_games
    doc = Nokogiri::HTML(open("https://www.groupon.com/browse/nashville?lat=36.16589&lng=-86.78444&administrative_area=TN&locality=Nashville&address=Nashville%2C+TN&query=video+games&locale=en_US"))

     doc.css('.cui-udc-details').each do |game|
       puts game.content
     end
     binding.pry
      #  game.name
  end


end
