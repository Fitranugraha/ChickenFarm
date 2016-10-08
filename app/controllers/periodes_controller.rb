class PeriodesController < ApplicationController
  before_action :set_periode, only: [:show, :edit, :update, :destroy]

  # GET /periodes
  # GET /periodes.json
  def index
    @periodes = Periode.all
  end

  # GET /periodes/1
  # GET /periodes/1.json
  def show
  end

  # GET /periodes/new
  def new
    @periode = Periode.new
  end

  # GET /periodes/1/edit
  def edit
  end

  # POST /periodes
  # POST /periodes.json
  def create
    @periode = Periode.new(periode_params)

    respond_to do |format|
      if @periode.save
        format.html { redirect_to @periode, notice: 'Periode was successfully created.' }
        format.json { render :show, status: :created, location: @periode }
      else
        format.html { render :new }
        format.json { render json: @periode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodes/1
  # PATCH/PUT /periodes/1.json
  def update
    respond_to do |format|
      if @periode.update(periode_params)
        format.html { redirect_to @periode, notice: 'Periode was successfully updated.' }
        format.json { render :show, status: :ok, location: @periode }
      else
        format.html { render :edit }
        format.json { render json: @periode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodes/1
  # DELETE /periodes/1.json
  def destroy
    @periode.destroy
    respond_to do |format|
      format.html { redirect_to periodes_url, notice: 'Periode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periode
      @periode = Periode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def periode_params
      params.require(:periode).permit(:no, :code, :description, :start_date, :end_date, :total_do, :henhouse_id)
    end
end
