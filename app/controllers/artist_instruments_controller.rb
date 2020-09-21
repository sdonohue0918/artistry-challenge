class ArtistInstrumentsController < ApplicationController
    
    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create
        @artist_instrument = ArtistInstrument.create(ai_params)
        redirect_to artist_path(@artist_instrument.artist)
    end

    private

    def ai_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end