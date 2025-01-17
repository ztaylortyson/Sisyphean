class ProceduralHistoriesController < ApplicationController
  before_action :set_procedural_history, only: %i[ show edit update destroy ]

  # GET /procedural_histories or /procedural_histories.json
  def index
    @procedural_histories = ProceduralHistory.all
  end

  # GET /procedural_histories/1 or /procedural_histories/1.json
  def show
  end

  # GET /procedural_histories/new
  def new
    @procedural_history = ProceduralHistory.new
  end

  # GET /procedural_histories/1/edit
  def edit
  end

  # POST /procedural_histories or /procedural_histories.json
  def create
    @procedural_history = ProceduralHistory.new(procedural_history_params)

    respond_to do |format|
      if @procedural_history.save
        format.html { redirect_to @procedural_history, notice: "Procedural history was successfully created." }
        format.json { render :show, status: :created, location: @procedural_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @procedural_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedural_histories/1 or /procedural_histories/1.json
  def update
    respond_to do |format|
      if @procedural_history.update(procedural_history_params)
        format.html { redirect_to @procedural_history, notice: "Procedural history was successfully updated." }
        format.json { render :show, status: :ok, location: @procedural_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @procedural_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedural_histories/1 or /procedural_histories/1.json
  def destroy
    @procedural_history.destroy!

    respond_to do |format|
      format.html { redirect_to procedural_histories_path, status: :see_other, notice: "Procedural history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedural_history
      @procedural_history = ProceduralHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def procedural_history_params
      params.require(:procedural_history).permit(:source, :date, :event, :description, :roa, :file)
    end
end
