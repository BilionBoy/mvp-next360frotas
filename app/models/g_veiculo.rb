# frozen_string_literal: true

class GVeiculo < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :g_centro_custo
  belongs_to :g_tipo_veiculo

end
