# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'g_status', 'g_status'
  inflect.irregular 'g_tipo_veiculo', 'g_tipos_veiculos'
  inflect.irregular 'g_tipo_centro_custo', 'g_tipos_centro_custo'
  inflect.irregular 'o_status', 'o_status'


end
