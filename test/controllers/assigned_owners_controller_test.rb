require 'test_helper'

class AssignedOwnersControllerTest < ActionController::TestCase
  setup do
    @assigned_owner = assigned_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assigned_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assigned_owner" do
    assert_difference('AssignedOwner.count') do
      post :create, assigned_owner: { owner_id: @assigned_owner.owner_id, task_id: @assigned_owner.task_id }
    end

    assert_redirected_to assigned_owner_path(assigns(:assigned_owner))
  end

  test "should show assigned_owner" do
    get :show, id: @assigned_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assigned_owner
    assert_response :success
  end

  test "should update assigned_owner" do
    patch :update, id: @assigned_owner, assigned_owner: { owner_id: @assigned_owner.owner_id, task_id: @assigned_owner.task_id }
    assert_redirected_to assigned_owner_path(assigns(:assigned_owner))
  end

  test "should destroy assigned_owner" do
    assert_difference('AssignedOwner.count', -1) do
      delete :destroy, id: @assigned_owner
    end

    assert_redirected_to assigned_owners_path
  end
end
