class SecaosController < ApplicationController
  before_action :set_secao, only: [:show, :edit, :update, :destroy]

  # GET /secaos
  # GET /secaos.json
  def index
    @secaos = Secao.all
  end

  # GET /secaos/1
  # GET /secaos/1.json
  def show
  end

  # GET /secaos/new
  def new
    @secao = Secao.new
  end

  # GET /secaos/1/edit
  def edit
  end

  # POST /secaos
  # POST /secaos.json
  def create
    @secao = Secao.new(secao_params)

    respond_to do |format|
      if @secao.save
        format.html { redirect_to @secao, notice: 'Secao was successfully created.' }
        format.json { render :show, status: :created, location: @secao }
      else
        format.html { render :new }
        format.json { render json: @secao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secaos/1
  # PATCH/PUT /secaos/1.json
  def update
    respond_to do |format|
      if @secao.update(secao_params)
        format.html { redirect_to @secao, notice: 'Secao was successfully updated.' }
        format.json { render :show, status: :ok, location: @secao }
      else
        format.html { render :edit }
        format.json { render json: @secao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secaos/1
  # DELETE /secaos/1.json
  def destroy
    @secao.destroy
    respond_to do |format|
      format.html { redirect_to secaos_url, notice: 'Secao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secao
      @secao = Secao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secao_params
      params.require(:secao).permit(:numero, :zona_id)
    end
end
