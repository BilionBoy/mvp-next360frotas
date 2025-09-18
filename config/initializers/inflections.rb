# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'g_status', 'g_status'
  inflect.irregular 'g_tipo_veiculo', 'g_tipos_veiculos'
  inflect.irregular 'g_tipo_centro_custo', 'g_tipos_centro_custo'
  inflect.irregular 'g_tipo_usuario',  'g_tipo_usuarios'
  inflect.irregular 'g_centro_custo',  'g_centro_custos'
  inflect.irregular 'o_status', 'o_status'
  inflect.irregular 'o_tipo_solicitacao', 'o_tipos_solicitacao'
  inflect.irregular 'o_categoria_servico', 'o_categorias_servico'


end
