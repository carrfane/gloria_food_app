class MergeLocalsController < ApplicationController
  before_action :set_merge_local, only: [:show, :edit, :update, :destroy]

  # GET /merge_locals
  # GET /merge_locals.json
  def index
    @merge_locals = MergeLocal.all
  end

  # GET /merge_locals/1
  # GET /merge_locals/1.json
  def show
  end

  # GET /merge_locals/new
  def new
    @merge_local = MergeLocal.new
  end

  # GET /merge_locals/1/edit
  def edit
  end

  # POST /merge_locals
  # POST /merge_locals.json
  def create
    @merge_local = MergeLocal.new(merge_local_params)

    respond_to do |format|
      if @merge_local.save
        format.html { redirect_to @merge_local, notice: 'Merge local was successfully created.' }
        format.json { render :show, status: :created, location: @merge_local }
      else
        format.html { render :new }
        format.json { render json: @merge_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merge_locals/1
  # PATCH/PUT /merge_locals/1.json
  def update
    respond_to do |format|
      if @merge_local.update(merge_local_params)
        format.html { redirect_to @merge_local, notice: 'Merge local was successfully updated.' }
        format.json { render :show, status: :ok, location: @merge_local }
      else
        format.html { render :edit }
        format.json { render json: @merge_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merge_locals/1
  # DELETE /merge_locals/1.json
  def destroy
    @merge_local.destroy
    respond_to do |format|
      format.html { redirect_to merge_locals_url, notice: 'Merge local was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merge_local
      @merge_local = MergeLocal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merge_local_params
      params.require(:merge_local).permit(:c_local_id, :prov_local_id, :merge_restaurant_id, :restaurant_token, :status)
    end
end
