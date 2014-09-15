require 'test_helper'

class SharedProjectsControllerTest < ActionController::TestCase
  setup do
    @shared_project = shared_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_project" do
    assert_difference('SharedProject.count') do
      post :create, shared_project: { description: @shared_project.description, name: @shared_project.name }
    end

    assert_redirected_to shared_project_path(assigns(:shared_project))
  end

  test "should show shared_project" do
    get :show, id: @shared_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared_project
    assert_response :success
  end

  test "should update shared_project" do
    patch :update, id: @shared_project, shared_project: { description: @shared_project.description, name: @shared_project.name }
    assert_redirected_to shared_project_path(assigns(:shared_project))
  end

  test "should destroy shared_project" do
    assert_difference('SharedProject.count', -1) do
      delete :destroy, id: @shared_project
    end

    assert_redirected_to shared_projects_path
  end
end
