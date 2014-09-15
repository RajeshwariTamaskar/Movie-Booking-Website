
class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: [:show, :edit, :update, :destroy]
  $num_of_tickets = 0
  # GET /shopping_carts
  # GET /shopping_carts.json
  def index
    @shopping_carts = ShoppingCart.all
    @shows = Show.all
  end

  # GET /shopping_carts/1
  # GET /shopping_carts/1.json
  def show
    #binding pry
    @shopping_carts = ShoppingCart.find(params[:id])
    
  end

  # GET /shopping_carts/new
  def new
    @shopping_cart = ShoppingCart.new
  end

  # GET /shopping_carts/1/edit
  def edit
  end

  def add_to_cart
    $shows = Show.find(params[:show_id])
    $movies = Movie.find(params[:movie_id])
    $theatres = Theatre.find(params[:theatre_id])
    $num_of_tickets = params[:num_of_tickets]
  end

 

  # POST /shopping_carts
  # POST /shopping_carts.json
  def create
    
    #@shopping_cart = ShoppingCart.new(shopping_cart_params)
    @shopping_cart = ShoppingCart.new        
    @shows = Show.find(params[:show_id])
    #binding pry
    @shopping_cart.num_of_tickets = params[:num_of_tickets] 
    @shopping_cart.price_per_seat = 8.50 
    @shows.seats_avail = @shows.seats_avail - @shopping_cart.num_of_tickets
    if(@shows.seats_avail > 0)  
      respond_to do |format|
        if @shopping_cart.save
          format.html { redirect_to @shopping_cart}
          format.json { render action: 'show', :show_id => $shows.id, status: :created, location: @shopping_cart }
        else
          format.html { render action: 'new' }
          format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
        end
      end
    
    else
       @shows.seats_avail = @shows.seats_avail + @shopping_cart.num_of_tickets 
    end 
        
  end

  # PATCH/PUT /shopping_carts/1
  # PATCH/PUT /shopping_carts/1.json
  def update
    respond_to do |format|
      if @shopping_cart.update(shopping_cart_params)
        format.html { redirect_to @shopping_cart, notice: 'Shopping cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_carts/1
  # DELETE /shopping_carts/1.json
  def destroy
    @shopping_cart.destroy
    respond_to do |format|
      format.html { redirect_to shopping_carts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_cart
      @shopping_cart = ShoppingCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_cart_params
      
      params.require(:shopping_cart).permit(:price_per_seat, :num_of_tickets)
    end
end
