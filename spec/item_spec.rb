require './modules/item'

describe Item do
  album = Item.new('aa', 'ss', 'cc', '2012/11/22', 'dd')
  it 'Check can_be_archived method' do
    value = album.send(:can_be_archived?)
    expect(value).to eq(true)
  end
end
