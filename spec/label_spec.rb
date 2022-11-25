require_relative '../modules/label.rb'

describe Label do
  before :each do
    @label = Label.new('The Planet', 'Green')
  end

  it 'Returns the given data to the constructor or not' do
    expect(@label.title).to eq 'The Planet'
    expect(@label.color).to eq 'Green'
  end

  it 'Whether it is an object instance instance of book class or not' do
    expect(@label).to be_an_instance_of Label
  end
end