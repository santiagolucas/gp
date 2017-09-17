class AndamentoSolicitacaoRecebidasController < ApplicationController
  before_action :set_andamento_solicitacao_recebida, only: [:show, :edit, :update, :destroy]

  # GET /andamento_solicitacao_recebidas
  # GET /andamento_solicitacao_recebidas.json
  def index
    @andamento_solicitacao_recebidas = AndamentoSolicitacaoRecebida.all
  end

  # GET /andamento_solicitacao_recebidas/1
  # GET /andamento_solicitacao_recebidas/1.json
  def show
  end

  # GET /andamento_solicitacao_recebidas/new
  def new
    @andamento_solicitacao_recebida = AndamentoSolicitacaoRecebida.new
  end

  # GET /andamento_solicitacao_recebidas/1/edit
  def edit
  end

  # POST /andamento_solicitacao_recebidas
  # POST /andamento_solicitacao_recebidas.json
  def create
    @andamento_solicitacao_recebida = AndamentoSolicitacaoRecebida.new(andamento_solicitacao_recebida_params)

    respond_to do |format|
      if @andamento_solicitacao_recebida.save
        format.html { redirect_to @andamento_solicitacao_recebida, notice: 'Andamento solicitacao recebida was successfully created.' }
        format.json { render :show, status: :created, location: @andamento_solicitacao_recebida }
      else
        format.html { render :new }
        format.json { render json: @andamento_solicitacao_recebida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /andamento_solicitacao_recebidas/1
  # PATCH/PUT /andamento_solicitacao_recebidas/1.json
  def update
    respond_to do |format|
      if @andamento_solicitacao_recebida.update(andamento_solicitacao_recebida_params)
        format.html { redirect_to @andamento_solicitacao_recebida, notice: 'Andamento solicitacao recebida was successfully updated.' }
        format.json { render :show, status: :ok, location: @andamento_solicitacao_recebida }
      else
        format.html { render :edit }
        format.json { render json: @andamento_solicitacao_recebida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /andamento_solicitacao_recebidas/1
  # DELETE /andamento_solicitacao_recebidas/1.json
  def destroy
    @andamento_solicitacao_recebida.destroy
    respond_to do |format|
      format.html { redirect_to andamento_solicitacao_recebidas_url, notice: 'Andamento solicitacao recebida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_andamento_solicitacao_recebida
      @andamento_solicitacao_recebida = AndamentoSolicitacaoRecebida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def andamento_solicitacao_recebida_params
      params.require(:andamento_solicitacao_recebida).permit(:data, :descricao, :observacao, :funcionario_id, :solicitacao_recebida_id, :criado_por, :atualizado_por)
    end
end
