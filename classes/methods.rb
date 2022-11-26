def add_book
  label = new_label
  author = add_author
  genre = new_genre
  print 'Publisher name is: '
  publisher = gets.chomp
  print 'Publishing date is [yyyy/mm/dd]: '
  published_date = gets.chomp
  print 'Cover state is: '
  cover_state = gets.chomp
  book = Book.new(genre, author, label, published_date, publisher, cover_state)
  label.add_item(book)
  genre.add_item(book)
  author.add_item(book)
  @books << book
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
