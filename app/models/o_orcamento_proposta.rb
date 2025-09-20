# frozen_string_literal: true

class OOrcamentoProposta < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :o_orcamento
  belongs_to :o_proposta
  belongs_to :o_status_aprovacao
end
