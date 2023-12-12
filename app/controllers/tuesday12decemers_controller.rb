class Tuesday12decemersController < ApplicationController
  before_action :set_tuesday12decemer, only: %i[ show edit update destroy ]

  # GET /tuesday12decemers or /tuesday12decemers.json
  def index
    @tuesday12decemers = Tuesday12decemer.all
  end

  # GET /tuesday12decemers/1 or /tuesday12decemers/1.json
  def show
  end

  # GET /tuesday12decemers/new
  def new
    @tuesday12decemer = Tuesday12decemer.new
  end

  # GET /tuesday12decemers/1/edit
  def edit
  end

  # POST /tuesday12decemers or /tuesday12decemers.json
  def create
    @tuesday12decemer = Tuesday12decemer.new(tuesday12decemer_params)

    respond_to do |format|
      if @tuesday12decemer.save
        format.html { redirect_to tuesday12decemer_url(@tuesday12decemer), notice: "Tuesday12decemer was successfully created." }
        format.json { render :show, status: :created, location: @tuesday12decemer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tuesday12decemer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuesday12decemers/1 or /tuesday12decemers/1.json
  def update
    respond_to do |format|
      if @tuesday12decemer.update(tuesday12decemer_params)
        format.html { redirect_to tuesday12decemer_url(@tuesday12decemer), notice: "Tuesday12decemer was successfully updated." }
        format.json { render :show, status: :ok, location: @tuesday12decemer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tuesday12decemer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuesday12decemers/1 or /tuesday12decemers/1.json
  def destroy
    @tuesday12decemer.destroy!

    respond_to do |format|
      format.html { redirect_to tuesday12decemers_url, notice: "Tuesday12decemer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuesday12decemer
      @tuesday12decemer = Tuesday12decemer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuesday12decemer_params
      params.require(:tuesday12decemer).permit(:name, :email, :address, :phone, :description, :personaldata)
    end
end
