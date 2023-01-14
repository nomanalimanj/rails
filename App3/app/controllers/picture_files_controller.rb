class PictureFilesController < ApplicationController
  before_action :set_picture_file, only: %i[ show edit update destroy ]

  # GET /picture_files or /picture_files.json
  def index
    @picture_files = PictureFile.all
  end

  # GET /picture_files/1 or /picture_files/1.json
  def show
  end

  # GET /picture_files/new
  def new
    @picture_file = PictureFile.new
  end

  # GET /picture_files/1/edit
  def edit
  end

  # POST /picture_files or /picture_files.json
  def create
    @picture_file = PictureFile.new(picture_file_params)

    respond_to do |format|
      if @picture_file.save
        format.html { redirect_to picture_file_url(@picture_file), notice: "Picture file was successfully created." }
        format.json { render :show, status: :created, location: @picture_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picture_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_files/1 or /picture_files/1.json
  def update
    respond_to do |format|
      if @picture_file.update(picture_file_params)
        format.html { redirect_to picture_file_url(@picture_file), notice: "Picture file was successfully updated." }
        format.json { render :show, status: :ok, location: @picture_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_files/1 or /picture_files/1.json
  def destroy
    @picture_file.destroy

    respond_to do |format|
      format.html { redirect_to picture_files_url, notice: "Picture file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_file
      @picture_file = PictureFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picture_file_params
      params.fetch(:picture_file, {})
    end
end
