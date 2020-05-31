require_relative 'slugger'
class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    include Slugger::InstanceMethods
    extend Slugger::ClassMethods
end