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
    doc = Nokogiri::HTML(open("http://www.gameinformer.com/b/news/archive/2016/10/10/2017-video-game-release-schedule.aspx"))

    # within the span element this takes the first parent, wich is the p tag and then goes into the span tag and pulls out the month
    #gives me all the months
    months = doc.search("div#divRenderBody p strong span")

    #this pulls out the list of games inside the span element
    the_containing_p = months.first.parent.parent.children

    #Iterate over each month and pull out that month
    months.each do |month|
      container_p = month.parent.parent
      names = container_p.parent.parent.to_html.split("<br>")
    end
    months
  end
    #  binding.pry
end
