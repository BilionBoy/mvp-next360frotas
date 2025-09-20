class HomeController < ApplicationController
  def index
    # Financeiro
    @total_orcamentos = OOrcamento.sum(:valor_total)

    # Veículos
    @veiculos_orcamentados = GVeiculo.joins(:o_orcamentos).distinct.count
    @total_veiculos = GVeiculo.count

    # Solicitações por status
    # Ajuste para o nome real da tabela
    @solicitacoes_status = OOrcamento.joins(:o_status)
                                     .group('o_status.descricao')
                                     .count

    # Para exemplo de cards de clientes/admin
    @novos_usuarios_mes = User.where('created_at >= ?', Date.today.beginning_of_month).count
    @pedidos_cliente = OOrcamento.where(user: current_user)
  end
end
