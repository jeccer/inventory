require 'test_helper'

class LocnXrefMastersControllerTest < ActionController::TestCase
  setup do
    @locn_xref_master = locn_xref_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locn_xref_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locn_xref_master" do
    assert_difference('LocnXrefMaster.count') do
      post :create, locn_xref_master: { boss_locn: @locn_xref_master.boss_locn, dsp_locn: @locn_xref_master.dsp_locn, ma_aisle: @locn_xref_master.ma_aisle, ma_area: @locn_xref_master.ma_area, ma_bay: @locn_xref_master.ma_bay, ma_level: @locn_xref_master.ma_level, ma_position: @locn_xref_master.ma_position, ma_zone: @locn_xref_master.ma_zone }
    end

    assert_redirected_to locn_xref_master_path(assigns(:locn_xref_master))
  end

  test "should show locn_xref_master" do
    get :show, id: @locn_xref_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locn_xref_master
    assert_response :success
  end

  test "should update locn_xref_master" do
    patch :update, id: @locn_xref_master, locn_xref_master: { boss_locn: @locn_xref_master.boss_locn, dsp_locn: @locn_xref_master.dsp_locn, ma_aisle: @locn_xref_master.ma_aisle, ma_area: @locn_xref_master.ma_area, ma_bay: @locn_xref_master.ma_bay, ma_level: @locn_xref_master.ma_level, ma_position: @locn_xref_master.ma_position, ma_zone: @locn_xref_master.ma_zone }
    assert_redirected_to locn_xref_master_path(assigns(:locn_xref_master))
  end

  test "should destroy locn_xref_master" do
    assert_difference('LocnXrefMaster.count', -1) do
      delete :destroy, id: @locn_xref_master
    end

    assert_redirected_to locn_xref_masters_path
  end
end
