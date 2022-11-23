require_relative 'item'

class Genre 
    attr_reader :item,:id,:name
    def initialize(name)
        @id=Random.rand(1..1000)
        @name=name
        @items=[]
    end

    def add_item(item)
        item.genre=self
        @items.push(item) unless @items.include?(item)
    end
    
    def self.list_genre(genres)
        genres.each do |genre|
            print genre['name']+' '
        end
    end

    private :id,:item
end

