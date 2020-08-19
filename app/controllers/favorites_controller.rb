class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites, include: [:song]
    end 

    def show
        favorite = Favorite.find_by(params[:id])
        render json: favorite
    end 

    def create
        @user = User.all[0]
        @song = Song.create(title: params[:title], duration: params[:duration], album: params[:album], preview: params[:preview])
        Favorite.create(user_id: @user.id, song_id: @song.id) 
        render json: @song 
    end

end
