class AssignedOwnersController < ApplicationController
  before_action :set_assigned_owner, only: [:show, :edit, :update, :destroy]

  # GET /assigned_owners
  # GET /assigned_owners.json
  def index
    @assigned_owners = AssignedOwner.all
  end

  # GET /assigned_owners/1
  # GET /assigned_owners/1.json
  def show
  end

  # GET /assigned_owners/new
  def new
    @assigned_owner = AssignedOwner.new
  end

  # GET /assigned_owners/1/edit
  def edit
  end

  # POST /assigned_owners
  # POST /assigned_owners.json
  def create
    @assigned_owner = AssignedOwner.new(assigned_owner_params)

    respond_to do |format|
      if @assigned_owner.save
        format.html { redirect_to @assigned_owner, notice: 'Assigned owner was successfully created.' }
        format.json { render :show, status: :created, location: @assigned_owner }
      else
        format.html { render :new }
        format.json { render json: @assigned_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigned_owners/1
  # PATCH/PUT /assigned_owners/1.json
  def update
    respond_to do |format|
      if @assigned_owner.update(assigned_owner_params)
        format.html { redirect_to @assigned_owner, notice: 'Assigned owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @assigned_owner }
      else
        format.html { render :edit }
        format.json { render json: @assigned_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_owners/1
  # DELETE /assigned_owners/1.json
  def destroy
    @assigned_owner.destroy
    respond_to do |format|
      format.html { redirect_to assigned_owners_url, notice: 'Assigned owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigned_owner
      @assigned_owner = AssignedOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assigned_owner_params
      params.require(:assigned_owner).permit(:task_id, :owner_id)
    end
end
