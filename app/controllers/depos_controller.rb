class DeposController < ApplicationController
  before_action :set_depo, only: %i[ show edit update destroy ]

  # GET /depos or /depos.json
  def index
    @depos = Depo.all
  end

  # GET /depos/1 or /depos/1.json
  def show
  end

  # GET /depos/new
  def new
    @depo = Depo.new
  end

  # GET /depos/1/edit
  def edit
  end

  # POST /depos or /depos.json
  def create
    @depo = Depo.new(depo_params)

    respond_to do |format|
      if @depo.save
        format.html { redirect_to @depo, notice: "Depo was successfully created." }
        format.json { render :show, status: :created, location: @depo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @depo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /depos/1 or /depos/1.json
  def update
    respond_to do |format|
      if @depo.update(depo_params)
        format.html { redirect_to @depo, notice: "Depo was successfully updated." }
        format.json { render :show, status: :ok, location: @depo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @depo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depos/1 or /depos/1.json
  def destroy
    @depo.destroy!

    respond_to do |format|
      format.html { redirect_to depos_path, status: :see_other, notice: "Depo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_depo
      @depo = Depo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def depo_params
      params.require(:depo).permit(:deponent, :title, :depo_date, :employed_by, :job_title, :doh, :dod, :reports_to, :file)
    end
end
