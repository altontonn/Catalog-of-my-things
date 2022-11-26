require './classes/item'

describe Item do
  album = Item.new('cool', 'Oxford', 'Good', '2012/11/22')
  it 'Check can_be_archived method' do
    value = album.send(:can_be_archived?)
    expect(value).to eq(true)
  end
end
