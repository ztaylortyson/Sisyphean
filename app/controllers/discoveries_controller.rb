class DiscoveriesController < ApplicationController
  before_action :set_discovery, only: %i[ show edit update destroy ]

  # GET /discoveries or /discoveries.json
  def index
    @rfa_s = Discovery.where(kind:"RFA")
    @srog_s = Discovery.where(kind: "SROG")
    @rfp_s = Discovery.where(kind: "RFP")
    @frogE_s = Discovery.where(kind: "FROG - Employment Law")
    @frogG_s = Discovery.where(kind: "FROG - General")
  end

  # GET /discoveries/1 or /discoveries/1.json
  def show
  end

  # GET /discoveries/new
  def new
    @discovery = Discovery.new
  end

  # GET /discoveries/1/edit
  def edit
  end

  # POST /discoveries or /discoveries.json
  def create
    @discovery = Discovery.new(discovery_params)

    respond_to do |format|
      if @discovery.save
        format.html { redirect_to @discovery, notice: "Discovery was successfully created." }
        format.json { render :show, status: :created, location: @discovery }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @discovery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discoveries/1 or /discoveries/1.json
  def update
    respond_to do |format|
      if @discovery.update(discovery_params)
        format.html { redirect_to @discovery, notice: "Discovery was successfully updated." }
        format.json { render :show, status: :ok, location: @discovery }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @discovery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discoveries/1 or /discoveries/1.json
  def destroy
    @discovery.destroy!

    respond_to do |format|
      format.html { redirect_to discoveries_path, status: :see_other, notice: "Discovery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discovery
      @discovery = Discovery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def discovery_params
      params.require(:discovery).permit(:kind, :set, :verified_by, :response_date, :file)
    end
end
