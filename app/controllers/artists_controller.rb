require 'httparty'
class ArtistsController < ApplicationController
    def index 
   
    end

    def show
        @artist = Artist.find_by(id: params[:id]) 
        url = "https://api.deezer.com/artist/#{params[:id]}"
        response = HTTParty.get(url)

        render json: response.parsed_response 
    end
end