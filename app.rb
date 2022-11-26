require_relative './modules/label'
require_relative './modules/book'
require_relative './methods'
require_relative './preserve_data/preserve_data'

class APP
  def initialize
    @books = []
    @music_albums = []
    @games = []
    @genres = []
    @labels = []
    @authors = []
  end
  
  def list_items(choice)
    case choice
    when 1
      Book.list_all_books(@books)
    when 2
      MusicAlbum.list_music_album(@music_albums)
    when 3
      Game.list_games(@games)
    when 4
      Genre.list_genre(@genres)
    when 5
      Label.list_all_labels(@labels)
    when 6
      Author.list_authors(@authors)
    end
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
    Output.load_books(@books)
    Output.load_labels(@labels)
    case choice
    when 1..6
      list_items(choice)
    when 7
      puts 'coming soon'
    when 8
      add_book
    when 9
      add_game
    when 10
      Input.save_data(@books, @labels)
    else
      puts 'Please pick a number from the list!'
    end
  end
end
