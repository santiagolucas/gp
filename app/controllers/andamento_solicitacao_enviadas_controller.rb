class AndamentoSolicitacaoEnviadasController < ApplicationController
  before_action :set_andamento_solicitacao_enviada, only: [:show, :edit, :update, :destroy]

  # GET /andamento_solicitacao_enviadas
  # GET /andamento_solicitacao_enviadas.json
  def index
    @andamento_solicitacao_enviadas = AndamentoSolicitacaoEnviada.all
  end

  # GET /andamento_solicitacao_enviadas/1
  # GET /andamento_solicitacao_enviadas/1.json
  def show
  end

  # GET /andamento_solicitacao_enviadas/new
  def new
    @andamento_solicitacao_enviada = AndamentoSolicitacaoEnviada.new
  end

  # GET /andamento_solicitacao_enviadas/1/edit
  def edit
  end

  # POST /andamento_solicitacao_enviadas
  # POST /andamento_solicitacao_enviadas.json
  def create
    @andamento_solicitacao_enviada = AndamentoSolicitacaoEnviada.new(andamento_solicitacao_enviada_params)

    respond_to do |format|
      if @andamento_solicitacao_enviada.save
        format.html { redirect_to @andamento_solicitacao_enviada, notice: 'Andamento solicitacao enviada was successfully created.' }
        format.json { render :show, status: :created, location: @andamento_solicitacao_enviada }
      else
        format.html { render :new }
        format.json { render json: @andamento_solicitacao_enviada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /andamento_solicitacao_enviadas/1
  # PATCH/PUT /andamento_solicitacao_enviadas/1.json
  def update
    respond_to do |format|
      if @andamento_solicitacao_enviada.update(andamento_solicitacao_enviada_params)
        format.html { redirect_to @andamento_solicitacao_enviada, notice: 'Andamento solicitacao enviada was successfully updated.' }
        format.json { render :show, status: :ok, location: @andamento_solicitacao_enviada }
      else
        format.html { render :edit }
        format.json { render json: @andamento_solicitacao_enviada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /andamento_solicitacao_enviadas/1
  # DELETE /andamento_solicitacao_enviadas/1.json
  def destroy
    @andamento_solicitacao_enviada.destroy
    respond_to do |format|
      format.html { redirect_to andamento_solicitacao_enviadas_url, notice: 'Andamento solicitacao enviada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_andamento_solicitacao_enviada
      @andamento_solicitacao_enviada = AndamentoSolicitacaoEnviada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def andamento_solicitacao_enviada_params
      params.require(:andamento_solicitacao_enviada).permit(:data, :descricao, :observacao, :funcionario_id, :solicitacao_enviada_id, :criado_por, :atualizado_por)
    end
end
