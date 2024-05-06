class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end

  def create
    @game = Game.create(
      title: params[:title],
      image: params[:image],
      description: params[:description],
      release_date: params[:release_date],
      platform: params[:platform],
    )
    render :show
  end

  def show
    @game = Game.find_by(id: params[:id])
    render :show
  end
end
