# frozen_string_literal: true
class OStatusAprovacaoController < ApplicationController
  before_action :set_o_status_aprovacao, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = OStatusAprovacao.ransack(params[:q])
    @pagy, @o_status_aprovacao = pagy(@q.result)
  end

  def new
    @o_status_aprovacao = OStatusAprovacao.new
  end

  def edit
  end

  def create
    @o_status_aprovacao = OStatusAprovacao.new(o_status_aprovacao_params)

    if @o_status_aprovacao.save
      redirect_to o_status_aprovacao_index_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @o_status_aprovacao.update(o_status_aprovacao_params)
      redirect_to o_status_aprovacao_index_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @o_status_aprovacao.destroy
      redirect_to o_status_aprovacao_index_path, notice: t('messages.deleted_successfully')
    else
      redirect_to o_status_aprovacao_index_path, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_o_status_aprovacao
    @o_status_aprovacao = OStatusAprovacao.find_by(id: params[:id])
    return redirect_to o_status_aprovacao_index_path, alert: t('messages.not_found') unless @o_status_aprovacao
  end

  def o_status_aprovacao_params
    permitted_attributes = OStatusAprovacao.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:o_status_aprovacao).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to o_status_aprovacao_index_path, alert: t('messages.not_found')
  end
end
