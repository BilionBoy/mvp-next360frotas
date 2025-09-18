json.extract! g_veiculo, :id, :placa, :modelo, :marca, :ano, :cor, :km_atual, :status_id, :g_tipo_veiculo_id, :g_centro_custo_id, :criado_em, :atualizado_em, :created_at, :updated_at
json.url g_veiculo_url(g_veiculo, format: :json)
