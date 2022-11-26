require './classes/game'

describe 'Test Game class' do
  game = Game.new('2018/11/23', true, '2019/11/23')
  it 'Creates new instance successfully' do
    expect(game).to be_an_instance_of(Game)
  end

  it 'The to_be_archived method should return true' do
    value = game.send(:can_be_archived?)
    expect(value).to eq(true)
  end
end
