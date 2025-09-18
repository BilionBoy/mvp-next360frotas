# frozen_string_literal: true

class OOrcamento < ApplicationRecord
  # Associações
  belongs_to :user                 # Usuário que é gestor
  belongs_to :g_veiculo
  belongs_to :g_centro_custo
  belongs_to :o_tipo_solicitacao
  belongs_to :o_status             # Status da solicitação


end
