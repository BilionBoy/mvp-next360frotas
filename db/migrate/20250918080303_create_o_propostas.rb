# db/migrate/20250918000000_create_o_propostas.rb
class CreateOPropostas < ActiveRecord::Migration[7.2]
  def change
    create_table :o_propostas do |t|
      t.references :o_orcamento, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true # fornecedor
      t.references :o_status, null: false, foreign_key: true

      t.decimal :valor_total, precision: 15, scale: 2
      t.string :itens

      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
