require './modules/genre'
require './modules/music_album'
require './modules/author'
require './modules/game'

class APP
  def initialize
    @books = []
    @music_albums = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end

  def menu
    puts "Welcome to Catalog of My Life App!\n \n"

    puts 'Please choose an option by entering a number:'
    puts '1. List all books'
    puts '2. List all music albums'
    puts '3. List all games'
    puts '4. List all genres'
    puts '5. List all labels'
    puts '6. List all authors'
    puts '7. Create a music album'
    puts '8. Create a book'
    puts '9. Create a game'
    puts '10. Exit'
  end

  def options(choice)
    case choice
    when 2
      MusicAlbum.list_music_album(@music_albums)
    when 3
      Game.list_games(@games)
    when 4
      Genre.list_genre(@genres)
    when 6
      Author.list_authors(@authors)
    when 10
      puts "Thank you for using the app please visit us soon!! \n \n \n"
    else
      puts 'Please pick a number from the list!'
    end
  end
end
