require 'date'

class Item
  attr_reader :id
  attr_accessor :genre, :author, :label, :publish_date

  def initialize(publish_date)
    @publish_date = publish_date
    @id = Random.rand(1..1000)
  end

  def  add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def  add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def  add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def  add_source(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  @archived = false
  def can_be_archived?
    p_date = @publish_date.split('/')
    array = []
    p_date.each do |value|
      array.push(value.to_i)
    end
    date_diff = (DateTime.now - DateTime.new(array[0], array[1], array[2])).to_f
    return true if date_diff > 3652.42199
    return false if date_diff < 3652.42199
  end
end
