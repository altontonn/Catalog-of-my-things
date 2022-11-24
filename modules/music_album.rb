require_relative 'item'

class MusicAlbum < Item
    attr_reader :on_spotify
  def initialize(genre, author, label, date, source, spotify)
    super(genre, author, label, date, source)
    @on_spotify = spotify
  end

  def self.list_music_album(albums)
    albums.each do |album|
        print "Genre: #{album.genre} Author: #{album.author} Label: #{album.label}"
        print "Date: #{album.date} Source: #{album.source} Spotify: #{album.on_spotify}\n\n"
      end
  end

  private

  def can_be_archived?
    if super() && @on_spotify then true else
                                          false
    end
  end
end
