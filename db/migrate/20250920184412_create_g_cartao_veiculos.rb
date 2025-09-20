# frozen_string_literal: true

class CreateGCartaoVeiculos < ActiveRecord::Migration[7.2]
  def up
    create_table :g_cartao_veiculos do |t|
      t.integer :numero_cartao
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :g_cartao_veiculos
  end
end
