# frozen_string_literal: true
class OOrcamentosController < ApplicationController
  before_action :set_o_orcamento, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = OOrcamento.ransack(params[:q])
    @pagy, @o_orcamentos = pagy(@q.result)
  end

  def new
    @o_orcamento = OOrcamento.new
  end

  def edit
  end

  def create
    @o_orcamento = OOrcamento.new(o_orcamento_params)

    if @o_orcamento.save
      redirect_to o_orcamentos_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @o_orcamento.update(o_orcamento_params)
      redirect_to o_orcamentos_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @o_orcamento.destroy
      redirect_to o_orcamentos_url, notice: t('messages.deleted_successfully')
    else
      redirect_to o_orcamentos_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_o_orcamento
    @o_orcamento = OOrcamento.find_by(id: params[:id])
    return redirect_to o_orcamentos_path, alert: t('messages.not_found') unless @o_orcamento
  end

  def o_orcamento_params
    permitted_attributes = OOrcamento.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:o_orcamento).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to o_orcamentos_path, alert: t('messages.not_found')
  end
end
