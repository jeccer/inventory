class LocnXrefMastersController < ApplicationController
  before_action :set_locn_xref_master, only: [:show, :edit, :update, :destroy]

  # GET /locn_xref_masters
  # GET /locn_xref_masters.json
  def index
    @locn_xref_masters = LocnXrefMaster.all
  end
  
  # GET /locn_xref_masters/1
  # GET /locn_xref_masters/1.json
  def show
  end

  # GET /locn_xref_masters/new
  def new
    @locn_xref_master = LocnXrefMaster.new
  end

  # GET /locn_xref_masters/1/edit
  def edit
  end

  # POST /locn_xref_masters
  # POST /locn_xref_masters.json
  def create
    @locn_xref_master = LocnXrefMaster.new(locn_xref_master_params)

    respond_to do |format|
      if @locn_xref_master.save
        format.html { redirect_to @locn_xref_master, notice: 'Locn xref master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @locn_xref_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @locn_xref_master.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
    LocnXrefMaster.load(params[:file])
    redirect_to root_url, notice: "Location cross reference data imported."
  end

  # PATCH/PUT /locn_xref_masters/1
  # PATCH/PUT /locn_xref_masters/1.json
  def update
    respond_to do |format|
      if @locn_xref_master.update(locn_xref_master_params)
        format.html { redirect_to @locn_xref_master, notice: 'Locn xref master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @locn_xref_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locn_xref_masters/1
  # DELETE /locn_xref_masters/1.json
  def destroy
    @locn_xref_master.destroy
    respond_to do |format|
      format.html { redirect_to locn_xref_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locn_xref_master
      @locn_xref_master = LocnXrefMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locn_xref_master_params
      params.require(:locn_xref_master).permit(:boss_locn, :ma_area, :ma_zone, :ma_aisle, :ma_bay, :ma_level, :ma_position, :dsp_locn)
    end
end
