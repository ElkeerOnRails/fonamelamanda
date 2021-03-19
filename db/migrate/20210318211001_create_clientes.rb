class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :idade
      t.integer :data_de_nascimento
      t.integer :cpf
      t.integer :rg
      t.string :uf
      t.integer :telefone
      t.string :email

      t.timestamps
    end
  end
end
