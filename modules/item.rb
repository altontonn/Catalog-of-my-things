require 'date'

class Item
  attr_reader :id
  attr_accessor :genre, :author, :label, :publish_date, :source

  def initialize(genre, author, label, publish_date, source)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @source = source
    @id = Random.rand(1..1000)
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
