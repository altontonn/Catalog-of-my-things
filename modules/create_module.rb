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

  def create_albums
    output = input(['genre','author',' label', 'date', 'source', 'spotify'])
    album = MusicAlbum.new(output[0], output[1], output[2], output[3], output[4], output[5])
    @genres.push(Genre.new(output[0])) unless @genres.include?(output[0])
    puts @genres
    @music_album.push(album) unless @music_album.include?(album)
    puts 'Record is created successfully!! '
  end
end
