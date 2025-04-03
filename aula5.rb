# -- HASHES --

# 1 -- CRIANDO UM HASH

    # sintaxe antiga (usando =>)
pessoa = { "nome" => "José", "idade" => 30, "cidade" => "recife" }

    # sintaxe moderna (usando símbolos ':')
pessoa2 = { nome: "José", idade: 30, cidade: "recife"}

puts pessoa
puts pessoa2
    # ambas as formas funcionam, mas a moderna é mais comum

# 2 -- ACESSANDO VALORES DO HASH

puts pessoa["nome"] # José  (depende de como foi criada)
puts pessoa2[:nome] # José  (depende de como foi criada)

# 3 -- ADICIONANDO E MODIFICANDO VALORES

pessoa2[:profissao] = "Desenvolvedor"   # Adicionado
pessoa2[:cidade] = "São Paulo"          # Modificado

puts pessoa2.inspect

# 4 -- REMOVENDO ELEMENTOS

pessoa2.delete(:idade)  # remove a chave :idadde
puts pessoa2.inspect

# 5 -- ITERANDO SOBRE UM HASH (each)

pessoa2.each do |chave, valor|
    puts "#{chave}: #{valor}"
end

# 6 -- MÉTODO ÚTEIS PARA HASHES

pessoa2.keys                        # [:nome, :cidade, :profissao]              -> todas as chaves
pessoa2.values                      # ["José", "São Paulo", "Desenvolvedor"]    -> todos os valores
pessoa2.has.key?(:nome)             # true                                      -> Verifica se a chave existe
pessoa2.has.value?("Engenheiro")    # false                                     -> Verifica se o valor existe

# 7 -- select E reject PARA FILTRAR HASHES

    # filtra apenas os pares onde o valor seja um string
so_texto = pessoa2.select { |chave, valor| valor.is_a?(String) }

puts so_texto.inspect