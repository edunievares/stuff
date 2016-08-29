require 'test_helper'

class RomsControllerTest < ActionController::TestCase
  setup do
    @rom = roms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rom" do
    assert_difference('Rom.count') do
      post :create, rom: { comment: @rom.comment, company: @rom.company, name: @rom.name, passed: @rom.passed, playing: @rom.playing, savefile: @rom.savefile, year: @rom.year }
    end

    assert_redirected_to rom_path(assigns(:rom))
  end

  test "should show rom" do
    get :show, id: @rom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rom
    assert_response :success
  end

  test "should update rom" do
    patch :update, id: @rom, rom: { comment: @rom.comment, company: @rom.company, name: @rom.name, passed: @rom.passed, playing: @rom.playing, savefile: @rom.savefile, year: @rom.year }
    assert_redirected_to rom_path(assigns(:rom))
  end

  test "should destroy rom" do
    assert_difference('Rom.count', -1) do
      delete :destroy, id: @rom
    end

    assert_redirected_to roms_path
  end
end
