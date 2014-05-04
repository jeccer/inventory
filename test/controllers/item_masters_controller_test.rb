require 'test_helper'

class ItemMastersControllerTest < ActionController::TestCase
  setup do
    @item_master = item_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_master" do
    assert_difference('ItemMaster.count') do
      post :create, item_master: { audit_created_dttm: @item_master.audit_created_dttm, audit_created_source: @item_master.audit_created_source, audit_created_source_type: @item_master.audit_created_source_type, audit_last_updated_dttm: @item_master.audit_last_updated_dttm, audit_last_updated_source: @item_master.audit_last_updated_source, audit_last_updated_source_type: @item_master.audit_last_updated_source_type, base_storage_uom_id: @item_master.base_storage_uom_id, business_partner_id: @item_master.business_partner_id, catch_weight_item: @item_master.catch_weight_item, cavity_ht: @item_master.cavity_ht, cavity_len: @item_master.cavity_len, cavity_wd: @item_master.cavity_wd, channel_type_id: @item_master.channel_type_id, color_desc: @item_master.color_desc, commodity_class_id: @item_master.commodity_class_id, commodity_code: @item_master.commodity_code, commodity_code_id: @item_master.commodity_code_id, commodity_level_desc: @item_master.commodity_level_desc, company_id: @item_master.company_id, database_qty_uom_id: @item_master.database_qty_uom_id, description: @item_master.description, dimension_uom_id: @item_master.dimension_uom_id, display_qty_uom_id: @item_master.display_qty_uom_id, hazmat_code: @item_master.hazmat_code, incremental_ht: @item_master.incremental_ht, incremental_len: @item_master.incremental_len, incremental_wd: @item_master.incremental_wd, is_generic_item: @item_master.is_generic_item, item_bar_code: @item_master.item_bar_code, item_color: @item_master.item_color, item_color_sfx: @item_master.item_color_sfx, item_desc_short: @item_master.item_desc_short, item_id: @item_master.item_id, item_image_filename: @item_master.item_image_filename, item_name: @item_master.item_name, item_orientation: @item_master.item_orientation, item_quality: @item_master.item_quality, item_quality_code: @item_master.item_quality_code, item_season: @item_master.item_season, item_season_year: @item_master.item_season_year, item_second_dim: @item_master.item_second_dim, item_size_desc: @item_master.item_size_desc, item_style: @item_master.item_style, item_style_sfx: @item_master.item_style_sfx, item_upc_gtin: @item_master.item_upc_gtin, mark_for_deletion: @item_master.mark_for_deletion, max_nest_number: @item_master.max_nest_number, prod_type: @item_master.prod_type, product_class_id: @item_master.product_class_id, protection_level_id: @item_master.protection_level_id, protn_factor: @item_master.protn_factor, size_uom: @item_master.size_uom, stab_code: @item_master.stab_code, stackable_item: @item_master.stackable_item, status_code: @item_master.status_code, std_bundl_qty: @item_master.std_bundl_qty, un_number_id: @item_master.un_number_id, unit_height: @item_master.unit_height, unit_length: @item_master.unit_length, unit_volume: @item_master.unit_volume, unit_weight: @item_master.unit_weight, unit_width: @item_master.unit_width, variable_weight: @item_master.variable_weight, version: @item_master.version, volume_uom_id: @item_master.volume_uom_id, weight_uom_id: @item_master.weight_uom_id }
    end

    assert_redirected_to item_master_path(assigns(:item_master))
  end

  test "should show item_master" do
    get :show, id: @item_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_master
    assert_response :success
  end

  test "should update item_master" do
    patch :update, id: @item_master, item_master: { audit_created_dttm: @item_master.audit_created_dttm, audit_created_source: @item_master.audit_created_source, audit_created_source_type: @item_master.audit_created_source_type, audit_last_updated_dttm: @item_master.audit_last_updated_dttm, audit_last_updated_source: @item_master.audit_last_updated_source, audit_last_updated_source_type: @item_master.audit_last_updated_source_type, base_storage_uom_id: @item_master.base_storage_uom_id, business_partner_id: @item_master.business_partner_id, catch_weight_item: @item_master.catch_weight_item, cavity_ht: @item_master.cavity_ht, cavity_len: @item_master.cavity_len, cavity_wd: @item_master.cavity_wd, channel_type_id: @item_master.channel_type_id, color_desc: @item_master.color_desc, commodity_class_id: @item_master.commodity_class_id, commodity_code: @item_master.commodity_code, commodity_code_id: @item_master.commodity_code_id, commodity_level_desc: @item_master.commodity_level_desc, company_id: @item_master.company_id, database_qty_uom_id: @item_master.database_qty_uom_id, description: @item_master.description, dimension_uom_id: @item_master.dimension_uom_id, display_qty_uom_id: @item_master.display_qty_uom_id, hazmat_code: @item_master.hazmat_code, incremental_ht: @item_master.incremental_ht, incremental_len: @item_master.incremental_len, incremental_wd: @item_master.incremental_wd, is_generic_item: @item_master.is_generic_item, item_bar_code: @item_master.item_bar_code, item_color: @item_master.item_color, item_color_sfx: @item_master.item_color_sfx, item_desc_short: @item_master.item_desc_short, item_id: @item_master.item_id, item_image_filename: @item_master.item_image_filename, item_name: @item_master.item_name, item_orientation: @item_master.item_orientation, item_quality: @item_master.item_quality, item_quality_code: @item_master.item_quality_code, item_season: @item_master.item_season, item_season_year: @item_master.item_season_year, item_second_dim: @item_master.item_second_dim, item_size_desc: @item_master.item_size_desc, item_style: @item_master.item_style, item_style_sfx: @item_master.item_style_sfx, item_upc_gtin: @item_master.item_upc_gtin, mark_for_deletion: @item_master.mark_for_deletion, max_nest_number: @item_master.max_nest_number, prod_type: @item_master.prod_type, product_class_id: @item_master.product_class_id, protection_level_id: @item_master.protection_level_id, protn_factor: @item_master.protn_factor, size_uom: @item_master.size_uom, stab_code: @item_master.stab_code, stackable_item: @item_master.stackable_item, status_code: @item_master.status_code, std_bundl_qty: @item_master.std_bundl_qty, un_number_id: @item_master.un_number_id, unit_height: @item_master.unit_height, unit_length: @item_master.unit_length, unit_volume: @item_master.unit_volume, unit_weight: @item_master.unit_weight, unit_width: @item_master.unit_width, variable_weight: @item_master.variable_weight, version: @item_master.version, volume_uom_id: @item_master.volume_uom_id, weight_uom_id: @item_master.weight_uom_id }
    assert_redirected_to item_master_path(assigns(:item_master))
  end

  test "should destroy item_master" do
    assert_difference('ItemMaster.count', -1) do
      delete :destroy, id: @item_master
    end

    assert_redirected_to item_masters_path
  end
end
