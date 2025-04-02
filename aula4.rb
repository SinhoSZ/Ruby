# ARRAYS E ITERADORES

# 1 -- CRIANDO ARRAYS

numeros = [1, 2, 3, 4, 5]   # Arrays simples

dados = ["Ruby", 10, true]  # Arrays com diferentes tipos de dados

vazio = []  # Arrays vazio

# 2 -- ACESSANDO ELEMENTOS

frutas = ["Maça", "Banana", "uva"]

puts fruta[0]   # Maçã
puts fruta[1]   # Banana
puts fruta[-1]  # Uva (índice negativo pega de trás para fente)

# 3 -- MÉTODO ÚTEIS PARA ARRAYS

numeros = [1, 2, 3, 4, 5]

puts numeros.length         # 5 (Tamanho do array)
puts numeros.first          # 1 (Primeiro elemento)
puts numeros.last           # 5 (Último elemento)
puts numeros.empty?         # false (Verifica se está vazio)
puts numeros.include?(3)    # true (Verifica se o arrays contém 3)

# 4 -- ADICIONANDO E REMOVENDO ELEMENTOS

frutas = ["Maçã", "Banana"]

frutas.push("Uva")      # Adiciona no final
frutas << "Laranja"     # Outra forma de adicionar no final
frutas.unshift("MAnga") # Adiciona no início
frutas.pop              # Remove o último
frutas.shift            # Remove o primeiro

puts frutas.inspect

# 5 -- ITERANDO SOBRE ARRAYS (each)

numeros = [1, 2, 3, 4, 5]

numeros.each do |num|   # eacch percorre cada elemento do array
    puts "Numero: #{num}"
end

# 6 -- CRIANDO UM NOVO ARRAY

quadrados = numeros.map { |num| num ** 2 } # map tranforma cada elemento e retorna um novo array
puts quadrados.inspect

# 7 -- select - FILTRANDO ELEMENTOS

pares = numeros.select {|num| num.even? } #  Retorna um novo array apenas com os elementos que atendem à condição!
puts pares.inspect # {2, 4}

# 8 -- reject - REMOVENDO ELEMENTOS QUE ATENDEM A UMA CONDIÇÃO

impares = numeros.reject { |num| num.even? } # reject é o oposto do select, removendo os elementos que atendem à condição
puts impares.inspect    # [1, 3, 5]

# 9 -- each_with_index - ITERANDO COM ÍNDICE

frutas = ["MAça", "Banana", "Uva"]

frutas.each_with_indez do |fruta, index| # Útil quando precisamos do índice e do valor ao mesmo tempo
    puts "#{index}: #{fruta}"
end

# 10 -- reeduce - ACUMULANDO VALORES

soma = numeros.reduce(0) { |acumuladoe, num| acumulador + num }
puts soma # 15
# reduce acumula um valor ao longo do array

# 11 -- inspect (retorna uma apresentação legível)

frutas = ["Maçã", "Banana", "Uva"]
puts frutas

# SAÍDA
    # maçã
    # Banana
    # Uva

# EXEMPLO COM inspect

# SAÍDA
    # ["Maçã", "Banana", "Uva"]