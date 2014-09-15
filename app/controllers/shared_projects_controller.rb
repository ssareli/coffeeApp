class SharedProjectsController < ApplicationController
  before_action :set_shared_project, only: [:show, :edit, :update, :destroy]

  # GET /shared_projects
  # GET /shared_projects.json
  def index
    @shared_projects = SharedProject.all
  end

  # GET /shared_projects/1
  # GET /shared_projects/1.json
  def show
  end

  # GET /shared_projects/new
  def new
    @shared_project = SharedProject.new
  end

  # GET /shared_projects/1/edit
  def edit
  end

  # POST /shared_projects
  # POST /shared_projects.json
  def create
    @shared_project = SharedProject.new(shared_project_params)

    respond_to do |format|
      if @shared_project.save
        format.html { redirect_to @shared_project, notice: 'Shared project was successfully created.' }
        format.json { render :show, status: :created, location: @shared_project }
      else
        format.html { render :new }
        format.json { render json: @shared_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_projects/1
  # PATCH/PUT /shared_projects/1.json
  def update
    respond_to do |format|
      if @shared_project.update(shared_project_params)
        format.html { redirect_to @shared_project, notice: 'Shared project was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_project }
      else
        format.html { render :edit }
        format.json { render json: @shared_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_projects/1
  # DELETE /shared_projects/1.json
  def destroy
    @shared_project.destroy
    respond_to do |format|
      format.html { redirect_to shared_projects_url, notice: 'Shared project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_project
      @shared_project = SharedProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_project_params
      params.require(:shared_project).permit(:name, :description)
    end
end
