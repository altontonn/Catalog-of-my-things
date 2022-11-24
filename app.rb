require './modules/genre'
require './modules/create_module'
require './modules/music_album'

class APP
  attr_accessor :books, :genres, :music_album

  include CreateElement

  def initialize
    @books = []
    @music_album = []
    @games = []
    @genres = []
  end

  def option(choice)
    case choice
    when 2
      if @music_album.length.zero?
        puts "\nNo Music Album found\n\n"
      else
        MusicAlbum.list_music_album(@music_album)
      end
    when 4
      if @genres.length.zero?
        puts "\nNo Genre Found \n\n"
      else
        Genre.list_genre(@genres)
      end  
    when 8
      create_albums
    when 11
      puts "\n\nThank you for using the app please visit us soon!! \n \n"
    else
      puts "\nPlease pick a number from the list!\n"
    end
  end

  def menu
    puts 'Please choose an option by entering a number:'
    puts '1. List all books'
    puts '2. List all music albums'
    puts '3. List all games'
    puts '4. List all genres'
    puts '5. List all labels'
    puts '6. List all authors'
    puts '7. List all sources'
    puts '8. Create a music album'
    puts '9. Create a book'
    puts '10. Create a game'
    puts '11. Exit'
  end
end
