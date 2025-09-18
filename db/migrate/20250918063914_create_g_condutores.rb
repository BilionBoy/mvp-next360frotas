# frozen_string_literal: true

class CreateGCondutores < ActiveRecord::Migration[7.2]
  def up
    create_table :g_condutores do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :senha
      t.string :cnh_numero
      t.string :cnh_categoria
      t.date :validade_cnh
      t.references :g_status, foreign_key: true
      t.datetime :criado_em
      t.datetime :atualizado_em
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :g_condutores
  end
end
