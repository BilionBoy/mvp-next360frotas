# frozen_string_literal: true
class OOrcamentoPropostasController < ApplicationController
  before_action :set_o_orcamento_proposta, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = OOrcamentoProposta.ransack(params[:q])
    @pagy, @o_orcamento_propostas = pagy(@q.result)
  end

  def new
    @o_orcamento_proposta = OOrcamentoProposta.new
  end

  def edit
  end

  def create
    @o_orcamento_proposta = OOrcamentoProposta.new(o_orcamento_proposta_params)

    if @o_orcamento_proposta.save
      redirect_to o_orcamento_propostas_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @o_orcamento_proposta.update(o_orcamento_proposta_params)
      redirect_to o_orcamento_propostas_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @o_orcamento_proposta.destroy
      redirect_to o_orcamento_propostas_url, notice: t('messages.deleted_successfully')
    else
      redirect_to o_orcamento_propostas_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_o_orcamento_proposta
    @o_orcamento_proposta = OOrcamentoProposta.find_by(id: params[:id])
    return redirect_to o_orcamento_propostas_path, alert: t('messages.not_found') unless @o_orcamento_proposta
  end

  def o_orcamento_proposta_params
    permitted_attributes = OOrcamentoProposta.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:o_orcamento_proposta).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to o_orcamento_propostas_path, alert: t('messages.not_found')
  end
end
