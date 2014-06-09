class UserVerificationsController < ApplicationController
  before_action :set_user_verification, only: [:show, :edit, :update, :destroy]

  # GET /user_verifications
  # GET /user_verifications.json
  def index
    @user_verifications = UserVerification.all
  end

  # GET /user_verifications/1
  # GET /user_verifications/1.json
  def show
  end

  # GET /user_verifications/new
  def new
    @user_verification = UserVerification.new
  end

  # GET /user_verifications/1/edit
  def edit
  end

  # POST /user_verifications
  # POST /user_verifications.json
  def create
    @user_verification = UserVerification.new(user_verification_params)

    respond_to do |format|
      if @user_verification.save
        format.html { redirect_to @user_verification, notice: 'User verification was successfully created.' }
        format.json { render :show, status: :created, location: @user_verification }
      else
        format.html { render :new }
        format.json { render json: @user_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_verifications/1
  # PATCH/PUT /user_verifications/1.json
  def update
    respond_to do |format|
      if @user_verification.update(user_verification_params)
        format.html { redirect_to @user_verification, notice: 'User verification was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_verification }
      else
        format.html { render :edit }
        format.json { render json: @user_verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_verifications/1
  # DELETE /user_verifications/1.json
  def destroy
    @user_verification.destroy
    respond_to do |format|
      format.html { redirect_to user_verifications_url, notice: 'User verification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_verification
      @user_verification = UserVerification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_verification_params
      params.require(:user_verification).permit(:name, :birthday, :is_intern, :mobile, :gender, :email, :department, :position, :area, :subjection, :tel, :fax, :im, :id_card, :adress, :postcode)
    end
end
