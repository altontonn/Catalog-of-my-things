require_relative 'item'

class Genre
  attr_reader :item, :id, :name

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item) unless @items.include?(item)
    item.add_genre = self
  end

  def self.list_genre(genres)
    if genres.length.zero?
        puts "\nNo Genre Found \n\n"
    else
    print "\n\n"
    genres.each_with_index do |genre, index|
      print "#{index}: #{genre.name} "
    end
    end
    print "\n\n"
  end

  private :id, :item
end

