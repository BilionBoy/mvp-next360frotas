# app/controllers/concerns/devise_permitted_parameters.rb
module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  protected

  def configure_permitted_parameters
    keys = %i[nome telefone cpf g_status_id g_tipo_usuario_id]

    # Permitir esses campos no sign_up e account_update
    devise_parameter_sanitizer.permit(:sign_up, keys: keys)
    devise_parameter_sanitizer.permit(:account_update, keys: keys)
  end
end
