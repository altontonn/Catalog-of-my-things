require 'json'
require './classes/music_album'
require './classes/genre'
require './classes/game'
require './classes/author'

module Read
    def load
        file = File.read('./data_store/music_album.json')
        music = JSON.parse(file)
        music.each do |album|
          @music_albums.push(MusicAlbum.new(album['genre'], album['author'],  album['date'], album['spotify']))
        end

        ############
        f = File.read('./data_store/author.json')
        author = JSON.parse(f)
        author.each do |l|
          @authors.push(Author.new(l['firstname'],l['lastname']))
        end
      
        #################
        file_json = File.read('./data_store/genre.json')
        genre = JSON.parse(file_json)
        genre.each do |g|
          @genres.push(Genre.new(g['name']))
        end

        ###############
        file_j = File.read('./data_store/game.json')
        game = JSON.parse(file_j)
        game.each do |ga|
          @games.push(Game.new(ga['date'],ga['multiplayer'],ga['last_played_at']))
        end
    end

    def save
        music = []
        @music_albums.each do |album|
          music.push({
                       genre:album.genre,
                       author: album.author,
                       date:album.publish_date,
                       spotify: album.on_spotify
                     })
        end
        File.write('./data_store/music_album.json',music.to_json)
         
        ###################
        author_json = []
        @authors.each do |author|
          author_json.push( {
            firstname: author.firstname,
            lastname: author.lastname
          })
        end
        File.write('./data_store/author.json',author_json.to_json)

      ###############33
      genre_json = []
      @genres.each do |genre|
        genre_json.push( {
          name: genre.name
        })
      end
      File.write('./data_store/genre.json',genre_json.to_json)
    
     #############
     game_json = []
      @games.each do |game|
        game_json.push( {
          date: game.date,
          multiplayer:game.multiplayer,
          last_played_at:game.last_played_at
        })
      end
      File.write('./data_store/game.json', game_json.to_json)
    end
end