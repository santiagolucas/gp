class SolicitacaoEnviadasController < ApplicationController
  before_action :set_solicitacao_enviada, only: [:show, :edit, :update, :destroy]

  # GET /solicitacao_enviadas
  # GET /solicitacao_enviadas.json
  def index
    @solicitacao_enviadas = SolicitacaoEnviada.all
  end

  # GET /solicitacao_enviadas/1
  # GET /solicitacao_enviadas/1.json
  def show
  end

  # GET /solicitacao_enviadas/new
  def new
    @solicitacao_enviada = SolicitacaoEnviada.new
  end

  # GET /solicitacao_enviadas/1/edit
  def edit
  end

  # POST /solicitacao_enviadas
  # POST /solicitacao_enviadas.json
  def create
    @solicitacao_enviada = SolicitacaoEnviada.new(solicitacao_enviada_params)

    respond_to do |format|
      if @solicitacao_enviada.save
        format.html { redirect_to @solicitacao_enviada, notice: 'Solicitacao enviada was successfully created.' }
        format.json { render :show, status: :created, location: @solicitacao_enviada }
      else
        format.html { render :new }
        format.json { render json: @solicitacao_enviada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitacao_enviadas/1
  # PATCH/PUT /solicitacao_enviadas/1.json
  def update
    respond_to do |format|
      if @solicitacao_enviada.update(solicitacao_enviada_params)
        format.html { redirect_to @solicitacao_enviada, notice: 'Solicitacao enviada was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitacao_enviada }
      else
        format.html { render :edit }
        format.json { render json: @solicitacao_enviada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitacao_enviadas/1
  # DELETE /solicitacao_enviadas/1.json
  def destroy
    @solicitacao_enviada.destroy
    respond_to do |format|
      format.html { redirect_to solicitacao_enviadas_url, notice: 'Solicitacao enviada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitacao_enviada
      @solicitacao_enviada = SolicitacaoEnviada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitacao_enviada_params
      params.require(:solicitacao_enviada).permit(:local, :descricao, :data_abertura, :data_encerramento, :observacao, :status, :criado_por, :atualizado_por)
    end
end
