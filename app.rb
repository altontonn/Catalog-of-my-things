require_relative './classes/author'
require_relative './classes/label'
require_relative './classes/book'
require_relative './methods'
require_relative './preserve_data/preserve_data'
require './classes/genre'
require './classes/create_module'
require './classes/read_module'
require './classes/music_album'
require 'json'

class APP
  include CreateElement
  include Read

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

  def list_item(choice)
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

  def options(choice)
    Output.load_books(@books)
    Output.load_labels(@labels)
    case choice
    when 1..6
      list_item(choice)
    when 7
      create_albums
    when 8
      add_book
    when 9
      add_game
    when 10
      save
      Input.save_data(@books, @labels)
    else
      puts 'Please pick a number from the list!'
    end
  end
end
