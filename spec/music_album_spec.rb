require './modules/music_album'

describe MusicAlbum do
  album = MusicAlbum.new('aa', 'ss', 'cc', '2012/11/22', 'dd', true)
  it 'Check can_be_archived method' do
    value = album.send(:can_be_archived?)
    expect(value).to eq(true)
  end
end
