class IsInternsController < ApplicationController
  before_action :set_is_intern, only: [:show, :edit, :update, :destroy]

  # GET /is_interns
  # GET /is_interns.json
  def index
    @is_interns = IsIntern.all
  end

  # GET /is_interns/1
  # GET /is_interns/1.json
  def show
  end

  # GET /is_interns/new
  def new
    @is_intern = IsIntern.new
  end

  # GET /is_interns/1/edit
  def edit
  end

  # POST /is_interns
  # POST /is_interns.json
  def create
    @is_intern = IsIntern.new(is_intern_params)

    respond_to do |format|
      if @is_intern.save
        format.html { redirect_to @is_intern, notice: 'Is intern was successfully created.' }
        format.json { render :show, status: :created, location: @is_intern }
      else
        format.html { render :new }
        format.json { render json: @is_intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /is_interns/1
  # PATCH/PUT /is_interns/1.json
  def update
    respond_to do |format|
      if @is_intern.update(is_intern_params)
        format.html { redirect_to @is_intern, notice: 'Is intern was successfully updated.' }
        format.json { render :show, status: :ok, location: @is_intern }
      else
        format.html { render :edit }
        format.json { render json: @is_intern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /is_interns/1
  # DELETE /is_interns/1.json
  def destroy
    @is_intern.destroy
    respond_to do |format|
      format.html { redirect_to is_interns_url, notice: 'Is intern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_is_intern
      @is_intern = IsIntern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def is_intern_params
      params.require(:is_intern).permit(:is_intern)
    end
end
