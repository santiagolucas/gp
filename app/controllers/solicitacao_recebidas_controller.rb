class SolicitacaoRecebidasController < ApplicationController
  before_action :set_solicitacao_recebida, only: [:show, :edit, :update, :destroy]

  # GET /solicitacao_recebidas
  # GET /solicitacao_recebidas.json
  def index
    @solicitacao_recebidas = SolicitacaoRecebida.all
  end

  # GET /solicitacao_recebidas/1
  # GET /solicitacao_recebidas/1.json
  def show
  end

  # GET /solicitacao_recebidas/new
  def new
    @solicitacao_recebida = SolicitacaoRecebida.new
  end

  # GET /solicitacao_recebidas/1/edit
  def edit
  end

  # POST /solicitacao_recebidas
  # POST /solicitacao_recebidas.json
  def create
    @solicitacao_recebida = SolicitacaoRecebida.new(solicitacao_recebida_params)

    respond_to do |format|
      if @solicitacao_recebida.save
        format.html { redirect_to @solicitacao_recebida, notice: 'Solicitacao recebida was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao_recebida }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_recebida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_recebidas/1
  # PATCH/PUT /solicitacao_recebidas/1.json
  def update
    respond_to do |format|
      if @solicitacao_recebida.update(solicitacao_recebida_params)
        format.html { redirect_to @solicitacao_recebida, notice: 'Solicitacao recebida was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_recebida }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_recebida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_recebidas/1
  # DELETE /solicitacao_recebidas/1.json
  def destroy
    @solicitacao_recebida.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_recebidas_url, notice: 'Solicitacao recebida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_recebida
      @solicitacao_recebida = SolicitacaoRecebida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_recebida_params
      params.require(:solicitacao_recebida).permit(:solicitante_id, :descricao, :data_abertura, :data_encerramento, :observacao, :status, :criado_por, :atualizado_por)
    end
end
