url = 'https://api.deezer.com/artist/27'
class SongsController < ApplicationController
    def index
        songs = Song.all 
        render json: request_api('https://api.deezer.com/artist/27') 
    end

    private 

    def request_api(url)
        response = Excon.get(
        url,
        headers: {
            'X-API-Host' => URI.parse(url).host,
            'X-API-Key' => ENV.fetch('e0f2de5f6fc56a3d33e078fdbe8c5e82')
        }
        )
        return nil if response.status != 200
        JSON.parse(response.body)
    end 
end
