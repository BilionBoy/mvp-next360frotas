class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Campos Devise
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Campos extras
      t.string :nome, null: false
      t.string :telefone
      t.string :cpf

      ## Referências
      t.references :g_status, null: false, foreign_key: { to_table: :g_status }
      t.references :g_tipo_usuario, null: false, foreign_key: { to_table: :g_tipo_usuarios }

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
