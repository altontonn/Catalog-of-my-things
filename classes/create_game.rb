module GameElement
  def add_game
    print 'last played date is [yyyy/mm/dd]: '
    last_played_at = gets.chomp
    print 'Publishing date is [yyyy/mm/dd]: '
    published_date = gets.chomp
    multiplayer = multiplayer?
    game = Game.new( published_date,multiplayer, last_played_at)
    @games << game
  end
  
  def multiplayer?
    print "\nIs it Mutiplayer? [Y/N]: "
    answer = gets.chomp.capitalize
    case answer
    when 'Y'
      true
    else
      false
    end
  end
end
