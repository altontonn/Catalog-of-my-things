require '../modules/author'

describe 'Test author class' do
    author = Author.new('Sam', 'David')
    it 'Creates an instance of the class' do
        expect(author).to be_an_instance_of(Author)
    end
end