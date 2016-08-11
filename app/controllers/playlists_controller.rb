class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :destroy]

  def index
    @playlists = Playlist.all

    render json: @playlists
  end

  def show
    render json: @playlist, include: :words
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  def update
    if @playlist.update(playlist_params)
      render json: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @playlist.destroy
  end

  private
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    def playlist_params
      params.require(:playlist).permit(:category, :words)
    end

end
