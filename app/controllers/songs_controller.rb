require 'httparty'
class SongsController < ApplicationController
    def index
        songs = Song.all 
        url = 'https://api.deezer.com/artist/27'
        response = HTTParty.get(url)
        
        render json: response.parsed_response
    end

    def song 
        song = Song.find_by(id: params[:id])
        url = 'https://api.deezer.com/artist/27'
    end
end
