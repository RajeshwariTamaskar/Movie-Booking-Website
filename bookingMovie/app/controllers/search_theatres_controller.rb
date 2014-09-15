class SearchTheatresController < ApplicationController
  before_action :set_search_theatre, only: [:show, :edit, :update, :destroy]

  # GET /search_theatres
  # GET /search_theatres.json
  def index
    @search_theatres = SearchTheatre.all
    @theatres =  Theatre.all
  end

  # GET /search_theatres/1
  # GET /search_theatres/1.json
  def show
  end
  
  # GET /search_theatres/new
  def new
    @search_theatre = SearchTheatre.new
  end

  

  # GET /search_theatres/1/edit
  def edit
  end

 

  # POST /search_theatres
  # POST /search_theatres.json
  def create
    @search_theatre = SearchTheatre.new(search_theatre_params)

    respond_to do |format|
      if @search_theatre.save
        format.html { redirect_to @search_theatre, notice: 'Search theatre was successfully created.' }
        format.json { render action: 'show', status: :created, location: @search_theatre }
      else
        format.html { render action: 'new' }
        format.json { render json: @search_theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  def search_theatre_byzip
     @theatres = Theatre.where("zipcode = ?", params[:zipcode])
  end



  # PATCH/PUT /search_theatres/1
  # PATCH/PUT /search_theatres/1.json
  def update
    respond_to do |format|
      if @search_theatre.update(search_theatre_params)
        format.html { redirect_to @search_theatre, notice: 'Search theatre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @search_theatre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_theatres/1
  # DELETE /search_theatres/1.json
  def destroy
    @search_theatre.destroy
    respond_to do |format|
      format.html { redirect_to search_theatres_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_theatre
      @search_theatre = SearchTheatre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_theatre_params
      params.require(:search_theatre).permit(:theatre_id, :user_id)
    end
end
