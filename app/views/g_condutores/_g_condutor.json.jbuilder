json.extract! g_condutor, :id, :nome, :email, :telefone, :senha, :cnh_numero, :cnh_categoria, :validade_cnh, :g_status_id, :criado_em, :atualizado_em, :created_at, :updated_at
json.url g_condutor_url(g_condutor, format: :json)
