class Author
  def initialize(first_name, last_name)
    @id = rand(1 - 1000)
    @firstname = first_name
    @lastname = last_name
    @items = []
  end

  def self.list_authors(auth)
    if auth.length.zero?
      puts "\nNo authors found\n"
     else
      auth.each do |a|
        puts "Name: #{a.firstname} #{a.lastname}\n"
      end
    end
  end

  def add_item(item)
    @items << item
    item.add_author = self
  end
end
