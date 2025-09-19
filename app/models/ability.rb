class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    case user.g_tipo_usuario.descricao
    when "ADMIN"
      can :manage, :all
      can :access, :sidebar_admin
    when "GESTOR"
      can :read, GCondutor
      can :read, GVeiculo
      can :read, OOrcamento
      can :access, :sidebar_gerente
    when "FORNECEDOR"
      can :read, OProposta
      can :create, OProposta
      can :update, OProposta, user_id: user.id
      can :access, :sidebar_fornecedor
    else
      can :read, :home
      can :access, :sidebar_user
    end
  end
end
