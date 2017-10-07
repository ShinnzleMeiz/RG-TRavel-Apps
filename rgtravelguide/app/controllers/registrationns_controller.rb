class RegistrationnsController < ApplicationController
  before_action :set_registrationn, only: [:show, :edit, :update, :destroy]

  # GET /registrationns
  # GET /registrationns.json
  def index
    @registrationns = Registrationn.all
  end

  # GET /registrationns/1
  # GET /registrationns/1.json
  def show
  end

  # GET /registrationns/new
  def new
    @registrationn = Registrationn.new
  end

  # GET /registrationns/1/edit
  def edit
  end

  # POST /registrationns
  # POST /registrationns.json
  def create
    @registrationn = Registrationn.new(registrationn_params)

    respond_to do |format|
      if @registrationn.save
        format.html { redirect_to @registrationn, notice: 'Registrationn was successfully created.' }
        format.json { render :show, status: :created, location: @registrationn }
      else
        format.html { render :new }
        format.json { render json: @registrationn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrationns/1
  # PATCH/PUT /registrationns/1.json
  def update
    respond_to do |format|
      if @registrationn.update(registrationn_params)
        format.html { redirect_to @registrationn, notice: 'Registrationn was successfully updated.' }
        format.json { render :show, status: :ok, location: @registrationn }
      else
        format.html { render :edit }
        format.json { render json: @registrationn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrationns/1
  # DELETE /registrationns/1.json
  def destroy
    @registrationn.destroy
    respond_to do |format|
      format.html { redirect_to registrationns_url, notice: 'Registrationn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registrationn
      @registrationn = Registrationn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registrationn_params
      params.require(:registrationn).permit(:name, :age, :email, :address)
    end
end
