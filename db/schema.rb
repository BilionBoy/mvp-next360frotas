# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_09_18_070206) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "g_centro_custos", force: :cascade do |t|
    t.string "nome", null: false
    t.bigint "g_tipo_centro_custo_id", null: false
    t.decimal "valor_inicial", precision: 15, scale: 2, default: "0.0", null: false
    t.decimal "saldo_atual", precision: 15, scale: 2, default: "0.0", null: false
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_tipo_centro_custo_id"], name: "index_g_centro_custos_on_g_tipo_centro_custo_id"
  end

  create_table "g_condutores", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.string "senha"
    t.string "cnh_numero"
    t.string "cnh_categoria"
    t.date "validade_cnh"
    t.bigint "g_status_id"
    t.datetime "criado_em"
    t.datetime "atualizado_em"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_status_id"], name: "index_g_condutores_on_g_status_id"
  end

  create_table "g_status", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_tipo_usuarios", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_tipos_centro_custo", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_tipos_veiculos", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_veiculos", force: :cascade do |t|
    t.string "placa"
    t.string "modelo"
    t.string "marca"
    t.integer "ano"
    t.string "cor"
    t.decimal "km_atual"
    t.string "status"
    t.bigint "g_tipo_veiculo_id"
    t.bigint "g_centro_custo_id"
    t.datetime "criado_em"
    t.datetime "atualizado_em"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_centro_custo_id"], name: "index_g_veiculos_on_g_centro_custo_id"
    t.index ["g_tipo_veiculo_id"], name: "index_g_veiculos_on_g_tipo_veiculo_id"
  end

  create_table "o_categorias_servico", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "o_orcamentos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "g_veiculo_id", null: false
    t.bigint "g_centro_custo_id", null: false
    t.bigint "o_tipo_solicitacao_id", null: false
    t.bigint "o_status_id", null: false
    t.decimal "valor_total", precision: 15, scale: 2
    t.jsonb "itens", default: []
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deleted_at"], name: "index_o_orcamentos_on_deleted_at"
    t.index ["g_centro_custo_id"], name: "index_o_orcamentos_on_g_centro_custo_id"
    t.index ["g_veiculo_id"], name: "index_o_orcamentos_on_g_veiculo_id"
    t.index ["o_status_id"], name: "index_o_orcamentos_on_o_status_id"
    t.index ["o_tipo_solicitacao_id"], name: "index_o_orcamentos_on_o_tipo_solicitacao_id"
    t.index ["user_id"], name: "index_o_orcamentos_on_user_id"
  end

  create_table "o_status", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "o_tipos_solicitacao", force: :cascade do |t|
    t.string "descricao"
    t.string "created_by"
    t.string "updated_by"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nome", null: false
    t.string "telefone"
    t.string "cpf"
    t.bigint "g_status_id", null: false
    t.bigint "g_tipo_usuario_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["g_status_id"], name: "index_users_on_g_status_id"
    t.index ["g_tipo_usuario_id"], name: "index_users_on_g_tipo_usuario_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "g_centro_custos", "g_tipos_centro_custo"
  add_foreign_key "g_condutores", "g_status"
  add_foreign_key "o_orcamentos", "g_centro_custos"
  add_foreign_key "o_orcamentos", "g_veiculos"
  add_foreign_key "o_orcamentos", "o_status"
  add_foreign_key "o_orcamentos", "o_tipos_solicitacao"
  add_foreign_key "o_orcamentos", "users"
  add_foreign_key "users", "g_status"
  add_foreign_key "users", "g_tipo_usuarios"
end
