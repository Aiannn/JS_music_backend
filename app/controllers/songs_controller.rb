require 'httparty'
class SongsController < ApplicationController
    def index
    
    end

    def show
        @song = Song.find_by(id: params[:id])
        url = "https://api.deezer.com/artist/#{params[:id]}/top?limit=5"
        response = HTTParty.get(url)

        render json: response.parsed_response
    end
end
