class Instrument < ApplicationRecord
    has_many :artist_instruments
    has_many :artists, through: :artist_instruments
    validates :name, uniqueness: true
end
