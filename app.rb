require './modules/genre'

class APP
  @books = []
  @music_album = []
  @games = []
  @genres=[]

  puts "Welcome to Catalog of My Life App!\n \n"

  loop do
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

    choice = gets.chomp.to_i

    case choice
    when 2
       if @music_album.length.zero? then puts "\nNo Music Album found\n\n" 
       else 
        MusicAlbum.list_music_album(@music_album)
       end     
    when 4 
      puts "\nNo Genre Found \n\n" if @genres.length.zero?
      Genre.list_genre(@genres)
    when 11
      puts "\n\nThank you for using the app please visit us soon!! \n \n"

      exit
    else
      puts "\nPlease pick a number from the list!\n"
    end
  end
end
