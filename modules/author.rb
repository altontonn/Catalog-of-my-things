class Author
  def initialize(first_name, last_name)
    @id = rand(1 - 1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def self.list_authors(authors)
    if authors.length.zero?
      puts "\nNo authors found\n"
    else
      authors.each do |author|
        print "Name: #{author['first_name']} #{author['last_name']}\n"
      end
    end
  end

  def add_item(item)
    item.author = self
    @items << item
  end
end
