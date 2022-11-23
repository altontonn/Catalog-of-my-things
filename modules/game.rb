require './item.rb'

class Game < item
    attr_accessor :multiplayer, :last_played_at
    def initialize(multiplayer, last_played_at)
        super
        @multiplayer = multiplayer
        @last_played_at = last_played_at
    end

    def self.list_games(games)
        games.each do |game|
            puts " multiplayer: #{game['multyplayer']} Last time played: #{game['last_time_played']}\n"
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