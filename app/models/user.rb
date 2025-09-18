# frozen_string_literal: true

class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associações
  belongs_to :g_status
  belongs_to :g_tipo_usuario

  # Validações básicas
  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true

  # Métodos de conveniência para permissões
  def admin?
    g_tipo_usuario.descricao == "ADMIN" 
  end

  def gestor?
    g_tipo_usuario.descricao == "GESTOR"
  end

  def fornecedor?
    g_tipo_usuario.descricao == "FORNECEDOR"
  end

  # Adicione outros tipos conforme necessário
end
