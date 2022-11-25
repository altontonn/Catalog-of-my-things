require_relative './modules/label'
require_relative './modules/book'
require_relative './methods'
require_relative './preserve_data/preserve_data'

class APP
  @books = []
  @music_album = []
  @games = []
  @labels = []

  puts "Welcome to Catalog of My Life App!\n \n"

  Output.load_books(@books)
  Output.load_labels(@labels)

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
    when 1
      Book.list_all_books(@books)
    when 5
      Label.list_all_labels(@labels)
    when 9
      add_book
      puts "\n\nBook added successfully\n\n"
    when 11
      Input.save_data(@books, @labels)
      puts "Thank you for using the app please visit us soon!! \n \n \n"
      exit
    else
      puts 'Please pick a number from the list!'
    end
  end
end
