# frozen_string_literal: true

class AddGCartaoVeiculoToGVeiculos < ActiveRecord::Migration[7.2]
  def up
    unless column_exists?(:g_veiculos, :g_cartao_veiculo_id)
      add_reference :g_veiculos, :g_cartao_veiculo, null: false, foreign_key: true
    end
  end

  def down
    if column_exists?(:g_veiculos, :g_cartao_veiculo_id)
      remove_reference :g_veiculos, :g_cartao_veiculo, foreign_key: true
    end
  end
end