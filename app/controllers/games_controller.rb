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

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(
      title: params[:title] || @game.title,
      image: params[:image] || @game.image,
      description: params[:description] || @game.description,
      release_date: params[:release_date] || @game.release_date,
      platform: params[:platform] || @game.platform,
    )
    render :show
  end

  def destroy
    @game = Game.find_by(id: params[:id])
    @game.destroy
    render json: { message: "Game destroyed successfully" }
  end
end
