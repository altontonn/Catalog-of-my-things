# Book
def add_book
  puts 'Enter publisher'
  publisher = gets.chomp
  puts 'Enter cover state'
  cover_state = gets.chomp
  puts 'Enter publish date'
  publish_date = gets.chomp
  book = Book.new(publisher, cover_state, publish_date)
  add_label(book)
  puts "\n\nBook added successfully\n\n"
  @books << book
end

# Label
def add_label(item)
  puts 'Title'
  title = gets.chomp
  puts 'Color'
  color = gets.chomp
  label = Label.new(title, color)
  label.add_item(item)
  @labels << label
end
