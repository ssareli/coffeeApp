require 'test_helper'

class AssignedTasksControllerTest < ActionController::TestCase
  setup do
    @assigned_task = assigned_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assigned_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assigned_task" do
    assert_difference('AssignedTask.count') do
      post :create, assigned_task: { owner_id: @assigned_task.owner_id, task_id: @assigned_task.task_id }
    end

    assert_redirected_to assigned_task_path(assigns(:assigned_task))
  end

  test "should show assigned_task" do
    get :show, id: @assigned_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assigned_task
    assert_response :success
  end

  test "should update assigned_task" do
    patch :update, id: @assigned_task, assigned_task: { owner_id: @assigned_task.owner_id, task_id: @assigned_task.task_id }
    assert_redirected_to assigned_task_path(assigns(:assigned_task))
  end

  test "should destroy assigned_task" do
    assert_difference('AssignedTask.count', -1) do
      delete :destroy, id: @assigned_task
    end

    assert_redirected_to assigned_tasks_path
  end
end
