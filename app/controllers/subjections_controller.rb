class SubjectionsController < ApplicationController
  before_action :set_subjection, only: [:show, :edit, :update, :destroy]

  # GET /subjections
  # GET /subjections.json
  def index
    @subjections = Subjection.all
  end

  # GET /subjections/1
  # GET /subjections/1.json
  def show
  end

  # GET /subjections/new
  def new
    @subjection = Subjection.new
  end

  # GET /subjections/1/edit
  def edit
  end

  # POST /subjections
  # POST /subjections.json
  def create
    @subjection = Subjection.new(subjection_params)

    respond_to do |format|
      if @subjection.save
        format.html { redirect_to @subjection, notice: 'Subjection was successfully created.' }
        format.json { render :show, status: :created, location: @subjection }
      else
        format.html { render :new }
        format.json { render json: @subjection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjections/1
  # PATCH/PUT /subjections/1.json
  def update
    respond_to do |format|
      if @subjection.update(subjection_params)
        format.html { redirect_to @subjection, notice: 'Subjection was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjection }
      else
        format.html { render :edit }
        format.json { render json: @subjection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjections/1
  # DELETE /subjections/1.json
  def destroy
    @subjection.destroy
    respond_to do |format|
      format.html { redirect_to subjections_url, notice: 'Subjection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjection
      @subjection = Subjection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjection_params
      params.require(:subjection).permit(:subjection)
    end
end
