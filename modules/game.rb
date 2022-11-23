require './modules/item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    super
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def self.list_games(games)
    if games.length.zero?
      puts "\nThere are no added games you can add by pressing 10\n"
    else
      games.each do |game|
        puts " multiplayer: #{game['multyplayer']} Last time played: #{game['last_time_played']}\n"
      end
    end
  end

  private

  def can_be_archived?
    p_date = last_played_at.split('/')
    array = []
    p_date.each do |value|
      array.push(value.to_i)
    end
    date_diff = (DateTime.now - DateTime.new(array)).to_f
    return true if date_diff > 730.5
    return false if date_diff <= 730.5
  end
end
