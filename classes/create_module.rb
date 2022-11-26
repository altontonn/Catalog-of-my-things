require_relative 'music_album'

module CreateElement
  def input(show)
    output = []
    show.each do |el|
      puts el
      output.push(gets.chomp)
    end
    output
  end

  def create_albums
    output = input(['Genre name'])
    genre = Genre.new(output[0])
    @genres << genre
    output = input(['Author firstname ', 'Author lastname'])
    author = Author.new(output[0], output[1])
    @authors << author
    output = input(['Label title', 'Label color'])
    label = Label.new(output[0], output[1])
    @labels << label
    output = input(%w[Date spotify])
    album = MusicAlbum.new(genre, author, label, output[0], output[1])
    @music_albums.push(album)
    puts 'Record is created successfully!! '
  end
end
