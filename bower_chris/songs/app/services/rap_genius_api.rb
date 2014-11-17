module RapGeniusApi

# get artist info
def self.get_artist_info(name)
	search = RapGenius.search_by_artist(name)
	artist = search.first.artist
end

# get song_ids for artist
def self.get_songs(name)
	search = RapGenius.search_by_artist(name)
	songs = search.map(&:id)
	songs.each do |song_id|
		song = RapGenius::Song.find(song_id)
	end

#get get_song_info
#get lyrics
#get media (url to audio)

end





#############################
#############################
#############################



# def self.search_for_artist(artist)
# 	artist_search = RapGenius.search_by_artist(artist)
# 	artist_search. each do |song|
# 		puts "Title: #{song.title}, ID: #{song.id}"
# 		get_song_info(song.id)
# 	end
# end

# def get_song_info(song_id)
# 	song = RapGenius::Song.find(song_id)
# 	puts "Song URL: #{song.url}, Description: #{song.description}"
# end

end