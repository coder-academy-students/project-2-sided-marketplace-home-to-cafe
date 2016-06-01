class HomeBakerProfilesController < ApplicationController
  before_action :set_home_baker_profile, only: [:show, :edit, :update, :destroy]

  # GET /home_baker_profiles
  # GET /home_baker_profiles.json
  def index
    @home_baker_profiles = HomeBakerProfile.all
  end

  # GET /home_baker_profiles/1
  # GET /home_baker_profiles/1.json
  def show
  end

  # GET /home_baker_profiles/new
  def new
    @home_baker_profile = HomeBakerProfile.new
  end

  # GET /home_baker_profiles/1/edit
  def edit
  end

  # POST /home_baker_profiles
  # POST /home_baker_profiles.json
  def create
    @home_baker_profile = HomeBakerProfile.new(home_baker_profile_params)

    respond_to do |format|
      if @home_baker_profile.save
        format.html { redirect_to @home_baker_profile, notice: 'Home baker profile was successfully created.' }
        format.json { render :show, status: :created, location: @home_baker_profile }
      else
        format.html { render :new }
        format.json { render json: @home_baker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_baker_profiles/1
  # PATCH/PUT /home_baker_profiles/1.json
  def update
    respond_to do |format|
      if @home_baker_profile.update(home_baker_profile_params)
        format.html { redirect_to @home_baker_profile, notice: 'Home baker profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_baker_profile }
      else
        format.html { render :edit }
        format.json { render json: @home_baker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_baker_profiles/1
  # DELETE /home_baker_profiles/1.json
  def destroy
    @home_baker_profile.destroy
    respond_to do |format|
      format.html { redirect_to home_baker_profiles_url, notice: 'Home baker profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_baker_profile
      @home_baker_profile = HomeBakerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_baker_profile_params
      params.require(:home_baker_profile).permit(:user_id, :logo_url, :name, :address, :phone_number, :latitude, :longitude)
    end
end
