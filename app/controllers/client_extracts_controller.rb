class ClientExtractsController < ApplicationController
  before_action :set_client_extract, only: [:show, :edit, :update, :destroy]

  # GET /client_extracts
  # GET /client_extracts.json
  def index
    @client_extract = ClientExtract.order(:CURR_LOCN_ID)
    respond_to do |format|
      format.html
      format.csv { send_data @client_extract.to_csv }
      format.xls #{ send_data @users.to_csv(col_sep: "\t") }
    end
  end

  # GET /client_extracts/1
  # GET /client_extracts/1.json
  def show
  end

  # GET /client_extracts/new
  def new
    @client_extract = ClientExtract.new
  end

  # GET /client_extracts/1/edit
  def edit
  end

  # POST /client_extracts
  # POST /client_extracts.json
  def create
    @client_extract = ClientExtract.new(client_extract_params)

    respond_to do |format|
      if @client_extract.save
        format.html { redirect_to @client_extract, notice: 'Client extract was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client_extract }
      else
        format.html { render action: 'new' }
        format.json { render json: @client_extract.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
    ClientExtract.import(params[:file])
    redirect_to root_url, notice: "Client extract data imported."
  end

  # PATCH/PUT /client_extracts/1
  # PATCH/PUT /client_extracts/1.json
  def update
    respond_to do |format|
      if @client_extract.update(client_extract_params)
        format.html { redirect_to @client_extract, notice: 'Client extract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client_extract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_extracts/1
  # DELETE /client_extracts/1.json
  def destroy
    @client_extract.destroy
    respond_to do |format|
      format.html { redirect_to client_extracts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_extract
      @client_extract = ClientExtract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_extract_params
      params.require(:client_extract).permit(:curr_locn_id, :locn_type, :company, :item_brcd, :item_name, :item_desc, :style, :color, :size, :std_cs_qty, :min_cs, :max_cs, :min_units, :max_units, :total_inventory, :sku_attribute_1)
    end
end
