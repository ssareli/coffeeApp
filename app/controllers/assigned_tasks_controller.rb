class AssignedTasksController < ApplicationController
  before_action :set_assigned_task, only: [:show, :edit, :update, :destroy]

  # GET /assigned_tasks
  # GET /assigned_tasks.json
  def index
    @assigned_tasks = AssignedTask.all
  end

  # GET /assigned_tasks/1
  # GET /assigned_tasks/1.json
  def show
  end

  # GET /assigned_tasks/new
  def new
    @assigned_task = AssignedTask.new
  end

  # GET /assigned_tasks/1/edit
  def edit
  end

  # POST /assigned_tasks
  # POST /assigned_tasks.json
  def create
    @assigned_task = AssignedTask.new(assigned_task_params)

    respond_to do |format|
      if @assigned_task.save
        format.html { redirect_to @assigned_task, notice: 'Assigned task was successfully created.' }
        format.json { render :show, status: :created, location: @assigned_task }
      else
        format.html { render :new }
        format.json { render json: @assigned_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigned_tasks/1
  # PATCH/PUT /assigned_tasks/1.json
  def update
    respond_to do |format|
      if @assigned_task.update(assigned_task_params)
        format.html { redirect_to @assigned_task, notice: 'Assigned task was successfully updated.' }
        format.json { render :show, status: :ok, location: @assigned_task }
      else
        format.html { render :edit }
        format.json { render json: @assigned_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_tasks/1
  # DELETE /assigned_tasks/1.json
  def destroy
    @assigned_task.destroy
    respond_to do |format|
      format.html { redirect_to assigned_tasks_url, notice: 'Assigned task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigned_task
      @assigned_task = AssignedTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assigned_task_params
      params.require(:assigned_task).permit(:task_id, :owner_id)
    end
end
