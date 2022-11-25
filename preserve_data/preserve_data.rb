require 'json'

class Input
  def self.save_books(books)
    # save book
    books_json = []
    books.each do |book|
      book_data = {
        publisher: book.publisher,
        cover_state: book.cover_state,
        publish_date: book.publish_date
      }
      books_json << book_data
    end
    File.write('./data_store/books.json', JSON.pretty_generate(books_json))
  end

  def self.save_labels(labels)
    # save label
    labels_json = []
    labels.each do |label|
      label_data = {
        title: label.title,
        color: label.color
      }
      labels_json << label_data
    end
    File.write('./data_store/labels.json', JSON.pretty_generate(labels_json))
  end

  def self.save_data(books, labels)
    save_books(books)
    save_labels(labels)
  end
end

class Output
  def self.load_books(books)
    return books unless File.exist?('./data_store/books.json')

    book_read = File.read('./data_store/books.json')
    book_json = JSON.parse(book_read)
    book_json.each do |book|
      book = Book.new(book['publisher'], book['cover_state'], book['publish_date'])
      books << book
    end
  end

  def self.load_labels(labels)
    return labels unless File.exist?('./data_store/labels.json')

    label_read = File.read('./data_store/labels.json')
    label_json = JSON.parse(label_read)
    label_json.each do |label|
      label = Label.new(label['title'], label['color'])
      labels << label
    end
  end
end
