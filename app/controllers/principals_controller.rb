class PrincipalsController < ApplicationController
  before_action :set_principal, only: %i[ show edit update destroy ]

  # GET /principals or /principals.json
  def index
    @principals = Principal.all
  end

  # GET /principals/1 or /principals/1.json
  def show
  end

  # GET /principals/new
  def new
    @principal = Principal.new
  end

  # GET /principals/1/edit
  def edit
  end

  # POST /principals or /principals.json
  def create
    @principal = Principal.new(principal_params)

    respond_to do |format|
      if @principal.save
        format.html { redirect_to @principal, notice: "Principal was successfully created." }
        format.json { render :show, status: :created, location: @principal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /principals/1 or /principals/1.json
  def update
    respond_to do |format|
      if @principal.update(principal_params)
        format.html { redirect_to @principal, notice: "Principal was successfully updated." }
        format.json { render :show, status: :ok, location: @principal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principals/1 or /principals/1.json
  def destroy
    @principal.destroy
    respond_to do |format|
      format.html { redirect_to principals_url, notice: "Principal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principal
      @principal = Principal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def principal_params
      params.require(:principal).permit(:tconst, :nconst, :category, :characters)
    end
end
