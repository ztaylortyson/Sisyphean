class PleadingsController < ApplicationController
  before_action :set_pleading, only: %i[ show edit update destroy ]

  # GET /pleadings or /pleadings.json
  def index
    @pleadings = Pleading.all
  end

  # GET /pleadings/1 or /pleadings/1.json
  def show
  end

  # GET /pleadings/new
  def new
    @pleading = Pleading.new
  end

  # GET /pleadings/1/edit
  def edit
  end

  # POST /pleadings or /pleadings.json
  def create
    @pleading = Pleading.new(pleading_params)

    respond_to do |format|
      if @pleading.save
        format.html { redirect_to @pleading, notice: "Pleading was successfully created." }
        format.json { render :show, status: :created, location: @pleading }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pleading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pleadings/1 or /pleadings/1.json
  def update
    respond_to do |format|
      if @pleading.update(pleading_params)
        format.html { redirect_to @pleading, notice: "Pleading was successfully updated." }
        format.json { render :show, status: :ok, location: @pleading }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pleading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pleadings/1 or /pleadings/1.json
  def destroy
    @pleading.destroy!

    respond_to do |format|
      format.html { redirect_to pleadings_path, status: :see_other, notice: "Pleading was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pleading
      @pleading = Pleading.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pleading_params
      params.require(:pleading).permit(:roa, :date_filed, :title, :filed_by, :file)
    end
end
