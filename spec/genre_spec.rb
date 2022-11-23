require './modules/genre'

describe Genre do
  genre = Genre.new('aa')
  it 'Check add_item method' do
    genre.add_item('11')
    expect(@item.length).to eq(1)
  end
end
