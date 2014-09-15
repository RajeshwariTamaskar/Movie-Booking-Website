class TheatreMoviesController < ApplicationController
  before_action :set_theatre_movie, only: [:show, :edit, :update, :destroy]

  # GET /theatre_movies
  # GET /theatre_movies.json
  def index
    @theatre_movies = TheatreMovie.all
    @movie = Movie.all
    @theatre = Theatre.all
    @show = Show.all
  end

  # GET /theatre_movies/1
  # GET /theatre_movies/1.json
  def show
  end

  # GET /theatre_movies/new
  def new
    @theatre_movie = TheatreMovie.new
  end

  # GET /theatre_movies/1/edit
  def edit
  end

  def theatre_movie_list
    #@theatre_movie = TheatreMovie.new
    @theatre = Theatre.find(params[:theatre_id])
    @theatre_movies = TheatreMovie.where(theatre_id: @theatre.id)
    
    
  end  

  # POST /theatre_movies
  # POST /theatre_movies.json
  def create
    @theatre_movie = TheatreMovie.new(theatre_movie_params)

    respond_to do |format|
      if @theatre_movie.save
        format.html { redirect_to @theatre_movie, notice: 'Theatre movie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @theatre_movie }
      else
        format.html { render action: 'new' }
        format.json { render json: @theatre_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theatre_movies/1
  # PATCH/PUT /theatre_movies/1.json
  def update
    respond_to do |format|
      if @theatre_movie.update(theatre_movie_params)
        format.html { redirect_to @theatre_movie, notice: 'Theatre movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @theatre_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theatre_movies/1
  # DELETE /theatre_movies/1.json
  def destroy
    @theatre_movie.destroy
    respond_to do |format|
      format.html { redirect_to theatre_movies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theatre_movie
      binding.pry
      @theatre_movie = TheatreMovie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theatre_movie_params
      params.require(:theatre_movie).permit(:theatre_id, :movie_id)
    end
end
