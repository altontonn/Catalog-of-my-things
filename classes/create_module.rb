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
    output = input(['genre','author','date','spotify'])
    album = MusicAlbum.new(output[0], output[1],output[2],output[3])
    @music_albums.push(album) 
    puts 'Record is created successfully!! '
  end
end
