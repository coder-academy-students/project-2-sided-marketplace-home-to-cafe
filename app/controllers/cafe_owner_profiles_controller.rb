class CafeOwnerProfilesController < ApplicationController
  before_action :set_cafe_owner_profile, only: [:show, :edit, :update, :destroy]

  # GET /cafe_owner_profiles
  # GET /cafe_owner_profiles.json
  def index
    @cafe_owner_profiles = CafeOwnerProfile.all
  end

  # GET /cafe_owner_profiles/1
  # GET /cafe_owner_profiles/1.json
  def show
  end

  # GET /cafe_owner_profiles/new
  def new
    @cafe_owner_profile = CafeOwnerProfile.new
  end

  # GET /cafe_owner_profiles/1/edit
  def edit
  end

  # POST /cafe_owner_profiles
  # POST /cafe_owner_profiles.json
  def create
    @cafe_owner_profile = CafeOwnerProfile.new(cafe_owner_profile_params)

    respond_to do |format|
      if @cafe_owner_profile.save
        format.html { redirect_to @cafe_owner_profile, notice: 'Cafe owner profile was successfully created.' }
        format.json { render :show, status: :created, location: @cafe_owner_profile }
      else
        format.html { render :new }
        format.json { render json: @cafe_owner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafe_owner_profiles/1
  # PATCH/PUT /cafe_owner_profiles/1.json
  def update
    respond_to do |format|
      if @cafe_owner_profile.update(cafe_owner_profile_params)
        format.html { redirect_to @cafe_owner_profile, notice: 'Cafe owner profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe_owner_profile }
      else
        format.html { render :edit }
        format.json { render json: @cafe_owner_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafe_owner_profiles/1
  # DELETE /cafe_owner_profiles/1.json
  def destroy
    @cafe_owner_profile.destroy
    respond_to do |format|
      format.html { redirect_to cafe_owner_profiles_url, notice: 'Cafe owner profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe_owner_profile
      @cafe_owner_profile = CafeOwnerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_owner_profile_params
      params.require(:cafe_owner_profile).permit(:user_id, :logo_url, :name, :address, :phone_number, :latitude, :longitude)
    end
end
