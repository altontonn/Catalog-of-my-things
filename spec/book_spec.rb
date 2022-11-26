require_relative '../classes/book'

describe Book do
  before :each do
    @book = Book.new('cool', 'kkkk', 'ddd', '2022-02-03', 'Oxford', 'Good')
  end
  it 'Returns the given data to the constructor or not' do
    expect(@book.publisher).to eq 'Oxford'
    expect(@book.cover_state).to eq 'Good'
    expect(@book.publish_date).to eq '2022-02-03'
  end

  it 'Whether it is an object instance instance of book class or not' do
    expect(@book).to be_an_instance_of Book
  end
end
