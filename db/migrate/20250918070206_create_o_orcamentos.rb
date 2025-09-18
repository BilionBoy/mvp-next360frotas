# frozen_string_literal: true

class CreateOOrcamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :o_orcamentos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :g_veiculo, null: false, foreign_key: true
      t.references :g_centro_custo, null: false, foreign_key: true
      t.references :o_tipo_solicitacao, null: false, foreign_key: true
      t.references :o_status, null: false, foreign_key: true

      t.decimal :valor_total, precision: 15, scale: 2
      t.jsonb :itens, default: []

      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end

    # Indexes adicionais
    add_index :o_orcamentos, :deleted_at
  end
end
