# frozen_string_literal: true

class CreateOOrcamentoPropostas < ActiveRecord::Migration[7.2]
  def up
    create_table :o_orcamento_propostas do |t|
      t.references :o_orcamento
      t.references :o_proposta
      t.references :o_status_aprovacao
      t.integer :aprovado_por
      t.datetime :aprovado_em
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :o_orcamento_propostas
  end
end
