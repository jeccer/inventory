require 'test_helper'

class ClientExtractsControllerTest < ActionController::TestCase
  setup do
    @client_extract = client_extracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_extracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_extract" do
    assert_difference('ClientExtract.count') do
      post :create, client_extract: { color: @client_extract.color, company: @client_extract.company, curr_locn_id: @client_extract.curr_locn_id, item_brcd: @client_extract.item_brcd, item_desc: @client_extract.item_desc, item_name: @client_extract.item_name, locn_type: @client_extract.locn_type, max_cs: @client_extract.max_cs, max_units: @client_extract.max_units, min_cs: @client_extract.min_cs, min_units: @client_extract.min_units, size: @client_extract.size, sku_attribute_1: @client_extract.sku_attribute_1, std_cs_qty: @client_extract.std_cs_qty, style: @client_extract.style, total_inventory: @client_extract.total_inventory }
    end

    assert_redirected_to client_extract_path(assigns(:client_extract))
  end

  test "should show client_extract" do
    get :show, id: @client_extract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_extract
    assert_response :success
  end

  test "should update client_extract" do
    patch :update, id: @client_extract, client_extract: { color: @client_extract.color, company: @client_extract.company, curr_locn_id: @client_extract.curr_locn_id, item_brcd: @client_extract.item_brcd, item_desc: @client_extract.item_desc, item_name: @client_extract.item_name, locn_type: @client_extract.locn_type, max_cs: @client_extract.max_cs, max_units: @client_extract.max_units, min_cs: @client_extract.min_cs, min_units: @client_extract.min_units, size: @client_extract.size, sku_attribute_1: @client_extract.sku_attribute_1, std_cs_qty: @client_extract.std_cs_qty, style: @client_extract.style, total_inventory: @client_extract.total_inventory }
    assert_redirected_to client_extract_path(assigns(:client_extract))
  end

  test "should destroy client_extract" do
    assert_difference('ClientExtract.count', -1) do
      delete :destroy, id: @client_extract
    end

    assert_redirected_to client_extracts_path
  end
end
