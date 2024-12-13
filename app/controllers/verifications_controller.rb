class VerificationsController < ApplicationController
  before_action :set_verification, only: %i[ show edit update destroy ]

  # GET /verifications or /verifications.json
  def index
    @verifications = Verification.all
  end

  # GET /verifications/1 or /verifications/1.json
  def show
  end

  # GET /verifications/new
  def new
    @verification = Verification.new
  end

  # GET /verifications/1/edit
  def edit
  end

  # POST /verifications or /verifications.json
  def create
    @verification = Verification.new(verification_params)

    respond_to do |format|
      if @verification.save
        format.html { redirect_to @verification, notice: "Verification was successfully created." }
        format.json { render :show, status: :created, location: @verification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verifications/1 or /verifications/1.json
  def update
    respond_to do |format|
      if @verification.update(verification_params)
        format.html { redirect_to @verification, notice: "Verification was successfully updated." }
        format.json { render :show, status: :ok, location: @verification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verifications/1 or /verifications/1.json
  def destroy
    @verification.destroy!

    respond_to do |format|
      format.html { redirect_to verifications_path, status: :see_other, notice: "Verification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verification
      @verification = Verification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def verification_params
      params.require(:verification).permit(:date, :title, :signed_by, :file)
    end
end
