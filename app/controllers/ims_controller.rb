class ImsController < ApplicationController
  before_action :set_im, only: [:show, :edit, :update, :destroy]

  # GET /ims
  # GET /ims.json
  def index
    @ims = Im.all
  end

  # GET /ims/1
  # GET /ims/1.json
  def show
  end

  # GET /ims/new
  def new
    @im = Im.new
  end

  # GET /ims/1/edit
  def edit
  end

  # POST /ims
  # POST /ims.json
  def create
    @im = Im.new(im_params)

    respond_to do |format|
      if @im.save
        format.html { redirect_to @im, notice: 'Im was successfully created.' }
        format.json { render :show, status: :created, location: @im }
      else
        format.html { render :new }
        format.json { render json: @im.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ims/1
  # PATCH/PUT /ims/1.json
  def update
    respond_to do |format|
      if @im.update(im_params)
        format.html { redirect_to @im, notice: 'Im was successfully updated.' }
        format.json { render :show, status: :ok, location: @im }
      else
        format.html { render :edit }
        format.json { render json: @im.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ims/1
  # DELETE /ims/1.json
  def destroy
    @im.destroy
    respond_to do |format|
      format.html { redirect_to ims_url, notice: 'Im was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_im
      @im = Im.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def im_params
      params.require(:im).permit(:im)
    end
end
