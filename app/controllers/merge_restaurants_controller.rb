class MergeRestaurantsController < ApplicationController
  before_action :set_merge_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /merge_restaurants
  # GET /merge_restaurants.json
  def index
    @merge_restaurants = MergeRestaurant.all
  end

  # GET /merge_restaurants/1
  # GET /merge_restaurants/1.json
  def show
  end

  # GET /merge_restaurants/new
  def new
    @merge_restaurant = MergeRestaurant.new
  end

  # GET /merge_restaurants/1/edit
  def edit
  end

  # POST /merge_restaurants
  # POST /merge_restaurants.json
  def create
    @merge_restaurant = MergeRestaurant.new(merge_restaurant_params)

    respond_to do |format|
      if @merge_restaurant.save
        format.html { redirect_to @merge_restaurant, notice: 'Merge restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @merge_restaurant }
      else
        format.html { render :new }
        format.json { render json: @merge_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merge_restaurants/1
  # PATCH/PUT /merge_restaurants/1.json
  def update
    respond_to do |format|
      if @merge_restaurant.update(merge_restaurant_params)
        format.html { redirect_to @merge_restaurant, notice: 'Merge restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @merge_restaurant }
      else
        format.html { render :edit }
        format.json { render json: @merge_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merge_restaurants/1
  # DELETE /merge_restaurants/1.json
  def destroy
    @merge_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to merge_restaurants_url, notice: 'Merge restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merge_restaurant
      @merge_restaurant = MergeRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merge_restaurant_params
      params.require(:merge_restaurant).permit(:restaurant_key, :connection_id, :status)
    end
end
