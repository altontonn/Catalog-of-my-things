class Author
  attr_accessor :items, :firstname, :lastname

  def initialize(firstname, lastname)
    @id = rand(1..1000)
    @firstname = firstname
    @lastname = lastname
    @items = []
  end

  def self.list_authors(author)
    if author.length.zero?
      puts "\nNo authors found\n"
    else
      author.each do |a|
        puts "Name: #{a.firstname} #{a.lastname}\n"
      end
    end
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end
