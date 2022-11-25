require_relative './item'

class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(publisher, cover_state, publish_date)
    super(genre, author, label, publish_date, source)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if super() || @cover_state == 'bad'
  end

  def self.list_all_books(books)
    if books.empty?
      puts "\nYou have no books currently, please add a book\n\n"
    else
      books.each do |book|
        puts "Publisher: \"#{book.publisher}\" Cover_state: \"#{book.cover_state}\" Publish_date: \"#{book.publish_date}\""
      end
    end
  end
end