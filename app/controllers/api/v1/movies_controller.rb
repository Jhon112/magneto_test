class Api::V1::MoviesController < ApplicationController
  def index
    if params[:start_date] && params[:end_date]
      start_params = params[:start_date]
      end_params = params[:end_date]

      start_date = Date.new(start_params["year"].to_i, start_params["month"].to_i, start_params["day"].to_i)
      end_date = Date.new(end_params["year"].to_i, end_params["month"].to_i, end_params["day"].to_i)
      @movies = Movie.where(["start_date < ? AND end_date > ?", start_date, end_date])
    else
      @movies = Movie.all
    end
    render json: @movies
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movie_params
    params.require(:movie).permit(:name, :description, :image_url, :start_date, :end_date)
  end
end
