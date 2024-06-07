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

#WE HAVE CONNECTION TO THE FRONT, getting a 500 error not sure where to go but the datepicker is linked to the below code for sure!!!

def games_by_date
  api_endpoint = "https://api.igdb.com/v4/games"

  request_headers = {
    headers: {
      "Client-ID" => ENV["TWITCH_CLIENT_ID"],
      "Authorization" => "Bearer #{ENV["IGDB_ACCESS_TOKEN"]}",
      "x-user-agent" => "ruby-apicalypse",
    },
  }

  api = Apicalypse.new(api_endpoint, request_headers)

  response = api
    .fields(:name, :total_rating)
    .where(category: 1)
    .search("Call of Duty")
    .limit(2)
    .request

  response
end

# # api response

# [
#   { "id" => 107299, "name" => "Call of Duty: WWII - Shadow War", "total_rating" => 75.0 },
#   { "id" => 57700, "name" => "Call of Duty: Infinite Warfare - Retribution", "total_rating" => 60.0 },
# ]
# # 060724 i worked on this today but didnt make any progress
