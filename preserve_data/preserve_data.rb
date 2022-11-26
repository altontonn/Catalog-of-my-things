require 'json'

class Input
  def self.save_books(books)
    # save book
    books_json = []
    books.each do |book|
      book_data = {
        genre: { name: book.genre.name },
        author: { firstname: book.author.firstname, lastname: book.author.lastname },
        label: { title: book.label.title, color: book.label.color },
        publish_date: book.publish_date, publisher: book.publisher, cover_state: book.cover_state
      }
      books_json << book_data
    end
    File.write('./data_store/books.json', JSON.pretty_generate(books_json))
  end

  def self.save_data(books)
    save_books(books)
  end
end

class Output
  def self.load_books(books, authors, labels, genres)
    return books unless File.exist?('./data_store/books.json')

    book_read = File.read('./data_store/books.json')
    return if book_read.empty?

    book_json = JSON.parse(book_read)
    book_json.each do |book|
      genre = Genre.new(book['genre']['name'])
      genres.push(genre)
      author = Author.new(book['author']['firstname'], book['author']['lastname'])
      authors.push(author)
      label = Label.new(book['label']['title'], book['label']['color'])
      labels.push(label)
      book = Book.new(genre, author, label, book['publisher'], book['cover_state'], book['publish_date'])
      books << book
    end
  end

  def self.load_labels(labels)
    return labels unless File.exist?('./data_store/labels.json')

    label_read = File.read('./data_store/labels.json')
    return if label_read.empty?

    label_json = JSON.parse(label_read)
    label_json.each do |label|
      label = Label.new(label['title'], label['color'])
      labels << label
    end
  end
end
