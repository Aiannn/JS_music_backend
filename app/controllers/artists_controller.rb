require 'httparty'
class ArtistsController < ApplicationController #actually we don't need this controller, since we almost don't use them, the single time we use it is when we make a get request, but we can do a get request for artist directly from API
    def index 
        artists = Artist.all 
        render json: artists
    end

    def show
        @artist = Artist.find_by(id: params[:id]) 
        url = "https://api.deezer.com/artist/#{params[:id]}"
        response = HTTParty.get(url)

        render json: response.parsed_response 
    end
end