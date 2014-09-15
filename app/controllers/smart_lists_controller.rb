class SmartListsController < ApplicationController
  before_action :set_smart_list, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "shane", password: "password1", except: [:index, :show]

  # GET /smart_lists
  # GET /smart_lists.json
  def index
  end

  # GET /smart_lists/1
  # GET /smart_lists/1.json
  def show
    # show user id home page
    @owner = Owner.find_by_email(params[:email])
  end

  # GET /smart_lists/new
  def new
    @smart_list = SmartList.new
  end

  # GET /smart_lists/1/edit
  def edit
  end

  # POST /smart_lists
  # POST /smart_lists.json
  def create
    @smart_list = SmartList.new(smart_list_params)

    respond_to do |format|
      if @smart_list.save
        format.html { redirect_to @smart_list, notice: 'Smart list was successfully created.' }
        format.json { render :show, status: :created, location: @smart_list }
      else
        format.html { render :new }
        format.json { render json: @smart_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smart_lists/1
  # PATCH/PUT /smart_lists/1.json
  def update
    respond_to do |format|
      if @smart_list.update(smart_list_params)
        format.html { redirect_to @smart_list, notice: 'Smart list was successfully updated.' }
        format.json { render :show, status: :ok, location: @smart_list }
      else
        format.html { render :edit }
        format.json { render json: @smart_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smart_lists/1
  # DELETE /smart_lists/1.json
  def destroy
    @smart_list.destroy
    respond_to do |format|
      format.html { redirect_to smart_lists_url, notice: 'Smart list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smart_list
      @smart_list = SmartList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smart_list_params
      params[:smart_list]
    end
end
