# frozen_string_literal: true

class GVeiculo < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :g_centro_custo
  belongs_to :g_tipo_veiculo
  has_many :o_orcamentos, class_name: "OOrcamento", foreign_key: "g_veiculo_id"

end
