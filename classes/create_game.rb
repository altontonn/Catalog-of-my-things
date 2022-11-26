def add_game
  label = new_label
  author = add_author
  genre = new_genre
  print 'last played date is [yyyy/mm/dd]: '
  last_played_at = gets.chomp
  print 'Publishing date is [yyyy/mm/dd]: '
  published_date = gets.chomp
  multiplayer = multiplayer?
  game = Game.new(genre, author, label, published_date, multiplayer, last_played_at)
  label.add_item(game)
  genre.add_item(game)
  author.add_item(game)
  @games << game
  @labels << label
  @genres << genre
  @authors << author
end

def new_label
  print "\nLabel Title is: "
  title = gets.chomp
  print "\nLabel color is: "
  color = gets.chomp
  Label.new(title, color)
end

def new_genre
  print "\ngenre name is: "
  name = gets.chomp
  Genre.new(name)
end

def add_author
  print "\nAuthor first name: "
  first_name = gets.chomp
  print "\nAuthor last name: "
  last_name = gets.chomp
  Author.new(first_name, last_name)
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
