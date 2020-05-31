require_relative 'slugger'
class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    include Slugger::InstanceMethods
    extend Slugger::ClassMethods
end