# frozen_string_literal: true

class CreateOStatusAprovacao < ActiveRecord::Migration[7.2]
  def up
    create_table :o_status_aprovacao do |t|
      t.string :descricao
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :o_status_aprovacao
  end
end
