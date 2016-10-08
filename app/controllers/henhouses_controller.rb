class HenhousesController < ApplicationController
  before_action :set_henhouse, only: [:show, :edit, :update, :destroy]

  # GET /henhouses
  # GET /henhouses.json
  def index
    @henhouses = Henhouse.all
  end

  # GET /henhouses/1
  # GET /henhouses/1.json
  def show
  end

  # GET /henhouses/new
  def new
    @henhouse = Henhouse.new
  end

  # GET /henhouses/1/edit
  def edit
  end

  # POST /henhouses
  # POST /henhouses.json
  def create
    @henhouse = Henhouse.new(henhouse_params)

    respond_to do |format|
      if @henhouse.save
        format.html { redirect_to @henhouse, notice: 'Henhouse was successfully created.' }
        format.json { render :show, status: :created, location: @henhouse }
      else
        format.html { render :new }
        format.json { render json: @henhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /henhouses/1
  # PATCH/PUT /henhouses/1.json
  def update
    respond_to do |format|
      if @henhouse.update(henhouse_params)
        format.html { redirect_to @henhouse, notice: 'Henhouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @henhouse }
      else
        format.html { render :edit }
        format.json { render json: @henhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /henhouses/1
  # DELETE /henhouses/1.json
  def destroy
    @henhouse.destroy
    respond_to do |format|
      format.html { redirect_to henhouses_url, notice: 'Henhouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_henhouse
      @henhouse = Henhouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def henhouse_params
      params.require(:henhouse).permit(:no, :name, :description, :capacity)
    end
end
