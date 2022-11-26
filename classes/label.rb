
class Label
  attr_accessor :title, :color, :items
  attr_reader :id

  def initialize(title, color)
    @id = rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label=self
  end

  def self.list_all_labels(labels)
    if labels.empty?
      puts "\n\nNo label found, please add one\n\n"
    else
      labels.each do |label|
        puts "Title: \"#{label.title}\" Color: \"#{label.color}\""
      end
    end
  end
end

