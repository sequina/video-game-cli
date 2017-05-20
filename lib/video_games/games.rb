class VideoGames::Games
  attr_accessor :name, :date, :console

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
     binding.pry
  end


end
