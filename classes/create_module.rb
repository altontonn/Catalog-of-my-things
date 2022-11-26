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
    output=input(['name'])
    genre=Genre.new(output[0])   
    output=input(['firstnamre','lastname'])
    author=Author.new(output[0],output[1])
    output=input(['title','color'])
    label=Label.new(output[0],output[1])
    output = input(['date','spotify'])
    album = MusicAlbum.new(genre, author, label, output[0],output[1])
    @music_albums.push(album) 
    puts 'Record is created successfully!! '
  end
end
