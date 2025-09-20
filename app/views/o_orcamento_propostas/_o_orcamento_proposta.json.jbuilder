json.extract! o_orcamento_proposta, :id, :o_orcamento_id, :o_proposta_id, :o_status_aprovacao_id, :aprovado_por, :aprovado_em, :created_at, :updated_at
json.url o_orcamento_proposta_url(o_orcamento_proposta, format: :json)
