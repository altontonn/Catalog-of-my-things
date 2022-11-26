require './classes/genre'
require './classes/music_album'

describe Genre do
  it 'Check name should be aa' do
    genre = Genre.new('aa')
    expect(genre.name).to eq('aa')
  end
  it 'Check add_items should contain an music album object' do
    genre = Genre.new('aa')
    music_album = MusicAlbum.new('cool', 'parag', '1/1/111', true)
    puts music_album
    genre.add_item(music_album)
    expect(genre.items[0]).to eq music_album
  end
end
