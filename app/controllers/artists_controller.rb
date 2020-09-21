class ArtistsController < ApplicationController
    def show
        @artist = Artist.find(params[:id])
    end

    def index
        @artists = Artist.all
    end

    
    
    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def destroy
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :age, :title )
    end


end
