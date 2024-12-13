class DocumentDumpsController < ApplicationController
  before_action :set_document_dump, only: %i[ show edit update destroy ]

  # GET /document_dumps or /document_dumps.json
  def index
    @document_dumps = DocumentDump.all
  end

  # GET /document_dumps/1 or /document_dumps/1.json
  def show
  end

  # GET /document_dumps/new
  def new
    @document_dump = DocumentDump.new
  end

  # GET /document_dumps/1/edit
  def edit
  end

  # POST /document_dumps or /document_dumps.json
  def create
    @document_dump = DocumentDump.new(document_dump_params)

    respond_to do |format|
      if @document_dump.save
        format.html { redirect_to @document_dump, notice: "Document dump was successfully created." }
        format.json { render :show, status: :created, location: @document_dump }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @document_dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_dumps/1 or /document_dumps/1.json
  def update
    respond_to do |format|
      if @document_dump.update(document_dump_params)
        format.html { redirect_to @document_dump, notice: "Document dump was successfully updated." }
        format.json { render :show, status: :ok, location: @document_dump }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @document_dump.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_dumps/1 or /document_dumps/1.json
  def destroy
    @document_dump.destroy!

    respond_to do |format|
      format.html { redirect_to document_dumps_path, status: :see_other, notice: "Document dump was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_dump
      @document_dump = DocumentDump.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def document_dump_params
      params.require(:document_dump).permit(:date, :title, :pos)
    end
end
