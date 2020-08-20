require 'httparty'
class SongsController < ApplicationController
    def index
        @songs = Song.all 
        render json: @songs 
    end

    def show #its for artists top5 songs
        @song = Song.find_by(id: params[:id])
        url = "https://api.deezer.com/artist/#{params[:id]}/top?limit=5"
        response = HTTParty.get(url)

        render json: response.parsed_response
    end

    def showed #its for specific song (really messed up)
        @song = Song.find_by(id: params[:id])
        render json: @song 
    end

    def destroy
        Song.destroy(params[:id])
    end


end
