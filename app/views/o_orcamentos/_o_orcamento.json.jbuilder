json.extract! o_orcamento, :id, :user_id, :g_veiculo_id, :g_centro_custo_id, :o_tipo_solicitacao_id, :o_status_id, :valor_total, :itens, :created_at, :updated_at
json.url o_orcamento_url(o_orcamento, format: :json)
