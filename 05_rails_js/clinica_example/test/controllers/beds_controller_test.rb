require "test_helper"

class BedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bed = beds(:one)
  end

  test "should get index" do
    get beds_url
    assert_response :success
  end

  test "should get new" do
    get new_bed_url
    assert_response :success
  end

  test "should create bed" do
    assert_difference('Bed.count') do
      post beds_url, params: { bed: { numero_de_cama: @bed.numero_de_cama, tipo: @bed.tipo } }
    end

    assert_redirected_to bed_url(Bed.last)
  end

  test "should show bed" do
    get bed_url(@bed)
    assert_response :success
  end

  test "should get edit" do
    get edit_bed_url(@bed)
    assert_response :success
  end

  test "should update bed" do
    patch bed_url(@bed), params: { bed: { numero_de_cama: @bed.numero_de_cama, tipo: @bed.tipo } }
    assert_redirected_to bed_url(@bed)
  end

  test "should destroy bed" do
    assert_difference('Bed.count', -1) do
      delete bed_url(@bed)
    end

    assert_redirected_to beds_url
  end
end
