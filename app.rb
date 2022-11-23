class APP
  @books = []
  @music_album = []
  @games = []

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
    when 3
      !@gmaes.length.zero? ? Game.list_games(@games) :  puts "\nThere are no added games you can add by pressing 10\n"
    when 6
      !@authers.length.zero? ? authors.list_games(@authors) :  puts "\nThere are no added authors you can add by pressing 10\n"
    when 11
      puts "Thank you for using the app please visit us soon!! \n \n \n"

      exit
    else
      puts 'Please pick a number from the list!'
    end
  end
end
