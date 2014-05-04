class ItemMastersController < ApplicationController
  before_action :set_item_master, only: [:show, :edit, :update, :destroy]

  # GET /item_masters
  # GET /item_masters.json
  def index
    @item_masters = ItemMaster.all
  end

  # GET /item_masters/1
  # GET /item_masters/1.json
  def show
  end

  # GET /item_masters/new
  def new
    @item_master = ItemMaster.new
  end

  # GET /item_masters/1/edit
  def edit
  end

  # POST /item_masters
  # POST /item_masters.json
  def create
    @item_master = ItemMaster.new(item_master_params)

    respond_to do |format|
      if @item_master.save
        format.html { redirect_to @item_master, notice: 'Item master was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item_master }
      else
        format.html { render action: 'new' }
        format.json { render json: @item_master.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def import
    ItemMaster.load(params[:file])
    redirect_to root_url, notice: "Item master data imported."
  end

  # PATCH/PUT /item_masters/1
  # PATCH/PUT /item_masters/1.json
  def update
    respond_to do |format|
      if @item_master.update(item_master_params)
        format.html { redirect_to @item_master, notice: 'Item master was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_masters/1
  # DELETE /item_masters/1.json
  def destroy
    @item_master.destroy
    respond_to do |format|
      format.html { redirect_to item_masters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_master
      @item_master = ItemMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_master_params
      params.require(:item_master).permit(:item_id, :company_id, :item_name, :business_partner_id, :description, :protection_level_id, :commodity_class_id, :commodity_code_id, :product_class_id, :un_number_id, :is_generic_item, :base_storage_uom_id, :item_season, :item_season_year, :item_style, :item_style_sfx, :item_color, :item_color_sfx, :item_second_dim, :item_quality, :item_size_desc, :item_bar_code, :item_desc_short, :item_upc_gtin, :unit_weight, :weight_uom_id, :unit_volume, :volume_uom_id, :unit_height, :unit_width, :unit_length, :dimension_uom_id, :variable_weight, :database_qty_uom_id, :display_qty_uom_id, :status_code, :item_image_filename, :audit_created_source, :audit_created_source_type, :audit_created_dttm, :audit_last_updated_source, :audit_last_updated_source_type, :audit_last_updated_dttm, :mark_for_deletion, :catch_weight_item, :commodity_level_desc, :channel_type_id, :color_desc, :size_uom, :hazmat_code, :commodity_code, :version, :item_quality_code, :prod_type, :std_bundl_qty, :stab_code, :item_orientation, :protn_factor, :cavity_len, :cavity_wd, :cavity_ht, :incremental_len, :incremental_wd, :incremental_ht, :stackable_item, :max_nest_number)
    end
end
