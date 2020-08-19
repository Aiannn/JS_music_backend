require 'httparty'
class SongsController < ApplicationController
    def index
        @songs = Song.all 
        render json: @songs 
    end

    def show
        @song = Song.find_by(id: params[:id])
        url = "https://api.deezer.com/artist/#{params[:id]}/top?limit=5"
        response = HTTParty.get(url)

        render json: response.parsed_response
    end

    def new 
    end 

    def create
        # @song = Song.create(s_params)
        # render json: @song 
        #http://localhost:3000/song/new 
    end

    private

    def s_params
        params.require(:song).permit(:title, :preview, :duration, :album, :release_date)
    end
end
