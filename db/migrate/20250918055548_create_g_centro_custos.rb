class CreateGCentroCustos < ActiveRecord::Migration[7.0]
  def change
    create_table :g_centro_custos do |t|
      t.string :nome, null: false
      t.references :g_tipo_centro_custo, null: false, foreign_key: true
      t.decimal :valor_inicial, precision: 15, scale: 2, default: 0.0, null: false
      t.decimal :saldo_atual, precision: 15, scale: 2, default: 0.0, null: false
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
