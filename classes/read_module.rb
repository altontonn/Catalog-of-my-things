require 'json'
require './classes/music_album'
require './classes/genre'
require './classes/game'
require './classes/author'
require './classes/label'

module Read
  def load
    file = File.read('./data_store/music_album.json')
    unless file.empty?
      music = JSON.parse(file)
      music.each do |album|
        genre = Genre.new(album['genre']['name'])
        @genres.push(genre)
        author = Author.new(album['author']['firstname'], album['author']['lastname'])
        @authors.push(author)
        label = Label.new(album['label']['title'], album['label']['color'])
        @labels.push(label)
        @music_albums.push(MusicAlbum.new(genre, author, label, album['date'], album['spotify']))
      end
    end

    #   ############
    #   f = File.read('./data_store/author.json')
    #   author = JSON.parse(f)
    #   if !author.empty?
    #   author.each do |l|
    #     @authors.push(Author.new(l['firstname'],l['lastname']))
    #   end
    # end

    #   #################
    #   file_json = File.read('./data_store/genre.json')
    #   genre = JSON.parse(file_json)
    #   genre.each do |g|
    #     @genres.push(Genre.new(g['name']))
    #   end

    ###############
    file_j = File.read('./data_store/game.json')
    return if file_j.empty?

    game = JSON.parse(file_j)
    game.each do |ga|
      genre = Genre.new(ga['genre']['name'])
      @genres.push(genre)
      author = Author.new(ga['author']['firstname'], ga['author']['lastname'])
      @authors.push(author)
      label = Label.new(ga['label']['title'], ga['label']['color'])
      @labels.push(label)
      @games.push(Game.new(genre, author, label, ga['date'], ga['multiplayer'], ga['last_played_at']))
    end
    Output.load_books(@books, @authors, @labels, @genres)
    # Output.load_labels(@labels)
  end

  def save
    music = []
    @music_albums.each do |album|
      music.push({
                   genre: { name: album.genre.name },
                   author: { firstname: album.author.firstname, lastname: album.author.lastname },
                   label: { title: album.label.title, color: album.label.color },
                   date: album.publish_date, spotify: album.on_spotify
                 })
    end
    File.write('./data_store/music_album.json', music.to_json)

    # ###################
    # author_json = []
    # @authors.each do |author|
    #   author_json.push( {
    #     firstname: author.firstname,
    #     lastname: author.lastname
    #   })
    # end
    # File.write('./data_store/author.json',author_json.to_json)

    # ##############33
    # genre_json = []
    # @genres.each do |genre|
    #   genre_json.push( {
    #     name: genre.name
    #   })
    # end
    # File.write('./data_store/genre.json',genre_json.to_json)

    #############
    game_json = []
    @games.each do |game|
      game_json.push({
                       date: game.publish_date,
                       genre: { name: game.genre.name },
                       author: {
                         firstname: game.author.firstname,
                         lastname: game.author.lastname
                       },
                       label: {
                         title: game.label.title,
                         color: game.label.color
                       },
                       multiplayer: game.multiplayer,
                       last_played_at: game.last_played_at
                     })
    end
    File.write('./data_store/game.json', game_json.to_json)
  end
end
