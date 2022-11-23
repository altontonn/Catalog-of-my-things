require_relative 'item'

class MusicAlbum < Item
  def initialize(*args, spotify)
    super(*args)
    @on_spotify = spotify
  end

  def self.list_music_album(albums)
    if albums.length.zero?
      puts "\nNo Music Album found\n\n"
    else
      albums.each do |album|
        print "Genre: #{album['genre']} Author: #{album['author']} Label: #{album['label']}"
        print "Date: #{album['album']} Source: #{album['source']} Spotify: #{album['spotify']}"
      end
    end
  end

  private

  def can_be_archived?
    if super() && @on_spotify then true else
                                          false
    end
  end
end
