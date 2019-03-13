class VanuesController < ApplicationController
  before_action :set_vanue, only: [:show, :edit, :update, :destroy]


  # GET /vanues
  # GET /vanues.json
  def index
    @vanues = Vanue.all
  end

  # GET /vanues/1
  # GET /vanues/1.json
  def show
  end

  # GET /vanues/new
  def new
    @vanue = Vanue.new
  end

  # GET /vanues/1/edit
  def edit
  end

  # POST /vanues
  # POST /vanues.json
  def create
    @vanue = Vanue.new(vanue_params)

    respond_to do |format|
      if @vanue.save
        format.html { redirect_to @vanue, notice: 'Vanue was successfully created.' }
        format.json { render :show, status: :created, location: @vanue }
      else
        format.html { render :new }
        format.json { render json: @vanue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vanues/1
  # PATCH/PUT /vanues/1.json
  def update
    respond_to do |format|
      if @vanue.update(vanue_params)
        format.html { redirect_to @vanue, notice: 'Vanue was successfully updated.' }
        format.json { render :show, status: :ok, location: @vanue }
      else
        format.html { render :edit }
        format.json { render json: @vanue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vanues/1
  # DELETE /vanues/1.json
  def destroy
    @vanue.destroy
    respond_to do |format|
      format.html { redirect_to vanues_url, notice: 'Vanue was successfully destroyed.' }
      format.json { head :no_content }
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vanue
      @vanue = Vanue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vanue_params
      params.require(:vanue).permit(:name, :address, :state, :city, :area, :latitude, :longitude, :guest_capacity, :prize, :description)
    end
end
