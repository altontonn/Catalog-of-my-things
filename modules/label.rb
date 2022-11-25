class Label
  attr_accessor :items
  attr_reader :id, :title, :color

  def initialize(title, color)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    items << item
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
