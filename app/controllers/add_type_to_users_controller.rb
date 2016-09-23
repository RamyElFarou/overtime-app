class AddTypeToUsersController < ApplicationController
  before_action :set_add_type_to_user, only: [:show, :edit, :update, :destroy]

  # GET /add_type_to_users
  # GET /add_type_to_users.json
  def index
    @add_type_to_users = AddTypeToUser.all
  end

  # GET /add_type_to_users/1
  # GET /add_type_to_users/1.json
  def show
  end

  # GET /add_type_to_users/new
  def new
    @add_type_to_user = AddTypeToUser.new
  end

  # GET /add_type_to_users/1/edit
  def edit
  end

  # POST /add_type_to_users
  # POST /add_type_to_users.json
  def create
    @add_type_to_user = AddTypeToUser.new(add_type_to_user_params)

    respond_to do |format|
      if @add_type_to_user.save
        format.html { redirect_to @add_type_to_user, notice: 'Add type to user was successfully created.' }
        format.json { render :show, status: :created, location: @add_type_to_user }
      else
        format.html { render :new }
        format.json { render json: @add_type_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_type_to_users/1
  # PATCH/PUT /add_type_to_users/1.json
  def update
    respond_to do |format|
      if @add_type_to_user.update(add_type_to_user_params)
        format.html { redirect_to @add_type_to_user, notice: 'Add type to user was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_type_to_user }
      else
        format.html { render :edit }
        format.json { render json: @add_type_to_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_type_to_users/1
  # DELETE /add_type_to_users/1.json
  def destroy
    @add_type_to_user.destroy
    respond_to do |format|
      format.html { redirect_to add_type_to_users_url, notice: 'Add type to user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_type_to_user
      @add_type_to_user = AddTypeToUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_type_to_user_params
      params.require(:add_type_to_user).permit(:type)
    end
end
