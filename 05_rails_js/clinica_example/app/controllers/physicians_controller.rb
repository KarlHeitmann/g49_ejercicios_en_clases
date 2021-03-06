class PhysiciansController < ApplicationController
  before_action :set_physician, only: %i[ show edit update destroy ]

  def all_data_physician
    # @physicians = Physician.all.map {|p| {...physician, appointments: p.appointments} } # Revisar el atajo
    
    
    
    # @physicians = Physician.all # Esto es equivalente al de abajo
    
    @physicians = []
    Physician.all.each do |physician|
      data_physician_complete = {}

      data_physician_complete["physician_data"] = physician
      data_physician_complete["appointments"] = physician.appointments
      # @physicians << physician
      @physicians << data_physician_complete
    end
    
    
    if @physicians.empty?
      render json: {}, status: :not_found
    else
      render json: { physicians: @physicians}, status: :ok
    end
  end

  # GET /physicians or /physicians.json
  def index
    @physicians = Physician.all
    @physician = Physician.new
  end

  # GET /physicians/1 or /physicians/1.json
  def show
  end

  # GET /physicians/new
  def new
    @physician = Physician.new
  end

  # GET /physicians/1/edit
  def edit
  end

  # POST /physicians or /physicians.json
  def create
    @physician = Physician.new(physician_params)

    sleep 0.5
    puts @physician
    puts @physician.name
    puts @physician.speciality
    puts ":::::::::"
    respond_to do |format|
      if @physician.save
        @physician_new = Physician.new
        format.html { redirect_to physician_url(@physician), notice: "Physician was successfully created." }
        format.json { render :show, status: :created, location: @physician }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @physician.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /physicians/1 or /physicians/1.json
  def update
    respond_to do |format|
      if @physician.update(physician_params)
        format.html { redirect_to physician_url(@physician), notice: "Physician was successfully updated." }
        format.json { render :show, status: :ok, location: @physician }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @physician.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /physicians/1 or /physicians/1.json
  def destroy
    @physician.destroy

    respond_to do |format|
      format.html { redirect_to physicians_url, notice: "Physician was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physician
      @physician = Physician.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def physician_params
      params.require(:physician).permit(:name, :speciality)
    end
end
