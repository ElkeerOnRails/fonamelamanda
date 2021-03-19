json.extract! cliente, :id, :nome, :idade, :data_de_nascimento, :cpf, :rg, :uf, :telefone, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
