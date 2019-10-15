class CopropietariosController < ApplicationController
  before_action :set_copropietario, only: [:show, :edit, :update, :destroy]

  # GET /copropietarios
  # GET /copropietarios.json
  def index
    @copropietarios = Copropietario.all
  end

  # GET /copropietarios/1
  # GET /copropietarios/1.json
  def show
  end

  # GET /copropietarios/new
  def new
    @copropietario = Copropietario.new
  end

  # GET /copropietarios/1/edit
  def edit
  end

  # POST /copropietarios
  # POST /copropietarios.json
  def create
    @copropietario = Copropietario.new(copropietario_params)

    respond_to do |format|
      if @copropietario.save
        format.html { redirect_to @copropietario, notice: 'Copropietario was successfully created.' }
        format.json { render :show, status: :created, location: @copropietario }
      else
        format.html { render :new }
        format.json { render json: @copropietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copropietarios/1
  # PATCH/PUT /copropietarios/1.json
  def update
    respond_to do |format|
      if @copropietario.update(copropietario_params)
        format.html { redirect_to @copropietario, notice: 'Copropietario was successfully updated.' }
        format.json { render :show, status: :ok, location: @copropietario }
      else
        format.html { render :edit }
        format.json { render json: @copropietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copropietarios/1
  # DELETE /copropietarios/1.json
  def destroy
    @copropietario.destroy
    respond_to do |format|
      format.html { redirect_to copropietarios_url, notice: 'Copropietario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copropietario
      @copropietario = Copropietario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copropietario_params
      params.require(:copropietario).permit(:id_copropietario, :nombres, :cedula, :fecha_nacimiento, :actividad, :direccion, :telefono, :celular, :mail, :id_edificio, :id_departamento)
    end
end
