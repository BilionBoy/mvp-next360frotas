json.extract! o_proposta, :id, :o_orcamento_id, :user_id, :o_status_id, :valor_total, :itens, :created_by, :updated_by, :deleted_at, :created_at, :updated_at
json.url o_proposta_url(o_proposta, format: :json)
