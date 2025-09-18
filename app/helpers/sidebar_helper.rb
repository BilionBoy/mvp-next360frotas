# app/helpers/sidebar_helper.rb
module SidebarHelper
  def render_sidebar
    if can?(:access, :sidebar_admin)
      render 'shared/sidebar/sidebar'
    elsif can?(:access, :sidebar_gerente)
      render 'shared/sidebar/sidebar_gerente'
    elsif can?(:access, :sidebar_fornecedor)
      render 'shared/sidebar/sidebar_fornecedor'
    else
      render 'shared/sidebar/sidebar_user'
    end
  end
end
