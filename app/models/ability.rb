# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    if user.g_tipo_usuario.descricao == "ADMIN"
      can :manage, :all
      can :access, :sidebar_admin
    elsif user.g_tipo_usuario.descricao == "GESTOR"
      # Apenas acesso a certos módulos
      can :read, GCondutor
      can :read, GVeiculo
      can :read, OOrcamento
      can :access, :sidebar_gerente
    else
      # Usuários comuns
      can :read, :home
      can :access, :sidebar_user
    end
  end
end
