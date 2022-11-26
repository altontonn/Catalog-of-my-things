require './classes/music_album'

describe MusicAlbum do
  album = MusicAlbum.new('aa', 'ss', 'fff', '2012/11/22', true)
  it 'Check can_be_archived method' do
    value = album.send(:can_be_archived?)
    expect(value).to eq(true)
  end
end
