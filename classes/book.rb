
require_relative 'item'

class Book < Item
  attr_accessor :cover_state, :publisher

  def initialize(*args, publisher, cover_state)
    super(*args)
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
        # rubocop:disable Layout/LineLength
        print "\nAuthor: #{book.author.firstname} #{book.author.lastname} Label title: #{book.label.title} label color: #{book.label.title}"
        print "Genre: #{book.genre.name} Publisher: #{book.publisher} Cover_state: #{book.cover_state} Publish_date: #{book.publish_date}"
        # rubocop:enable Layout/LineLength
      end
    end
  end
end
