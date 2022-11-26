require_relative 'item'
require_relative 'author'
require_relative 'genre'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(*args, spotify)
    super(*args)
    @on_spotify = spotify
  end

  def self.list_music_album(albums)
    if albums.length.zero?
      puts "\nNo Music Album found\n\n"
    else
      albums.each do |album|
        print "Genre: #{album.genre.name} Author: #{album.author.firstname} #{album.author.lastname} "
        print "Label title: #{album.label.title} Label color: #{album.label.color} "
        print "publish_Date: #{album.publish_date} Spotify: #{album.on_spotify}\n\n"
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
