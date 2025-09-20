# frozen_string_literal: true

class CreateGVeiculos < ActiveRecord::Migration[7.2]
  def up
    create_table :g_veiculos do |t|
      t.string :placa
      t.string :modelo
      t.string :marca
      t.integer :ano
      t.string :cor
      t.decimal :km_atual
      t.string :status
      t.references :g_tipo_veiculo
      t.references :g_centro_custo
      t.datetime :criado_em
      t.datetime :atualizado_em
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :g_veiculos
  end
end
