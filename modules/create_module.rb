require './modules/music_album'

module CreateElement
  def input(show)
    output = []
    show.each do |el|
      puts el
      output.push(gets.chomp)
    end
    output
  end

  def create_genre
    output = input(['genre'])
    Genre.new(output[0])
  end

  def create_author
    output = input(['firstname','lastname'])
    Author.new(output[0],output[1])
  end

  def create_label
    output = input([' label' ])
    Label.new(output[0])
  end

  def load_item(genre,author,label,date,source)
    label=Label.new(label)
    author=Author.new(author)
    genre=Genre.new(genre)
    date=date
    source=source
    output[genre,author,label,date,source]
  end

  def create_albums
    genre=create_genre
    authors=create_author
    labels=create_label
    output = input(['date','source','spotify'])
    album = MusicAlbum.new(genre, author, label, output[0], output[1], output[2])
    @genres.push(genre) unless @genres.include?(genre)
    @label.push(labels) unless @label.include?(labels)
    @author.push(authors) unless @author.include?(authors)
    @music_album.push(album) unless @music_album.include?(album)
    Genre.add_item(album)
    puts 'Record is created successfully!! '
  end
end
