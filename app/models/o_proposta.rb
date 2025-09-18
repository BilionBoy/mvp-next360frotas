# app/models/o_proposta.rb
class OProposta < ApplicationRecord
  belongs_to :o_orcamento
  belongs_to :user # fornecedor
  belongs_to :o_status

  # Validações
  validates :valor_total, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  # Escopo para garantir apenas fornecedores
  scope :somente_fornecedores, -> { joins(:user).joins(:g_tipo_usuario).where(g_tipo_usuarios: { descricao: "FORNECEDOR" }) }
end
