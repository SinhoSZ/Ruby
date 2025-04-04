dial_book = {
    "recife" => "81",
    "salvador" => "71",
    "fortaleza" => "85",
    "sao paulo" => "11",
    "rio de janeiro" => "21",
    "belo horizonte" => "31",
}

def get_city_names(somehash) # Método para exibir os nomes das cidades disponíveis
    somehash.keys # retorna todas as chaves (nomes das cidades)
end

def get_area_code(somehash, city) # método para buscar o código de área da cidade informada
    somehash[city] # retorna o código da cidade (se existir)
end

loop do   # loop do programa
    puts "Você quer buscar um código de área baseado no nome de uma cidade? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"

    # Mostra a lista da cidades disponíveis
    puts "Cidades disponíveis:"
    puts get_city_names(dial_book)

    # solicita ao usuário o nome da cidade
    puts "Digite o nome da cidade:"
    city = gets.chomp.downcase

    # Verifica se a cidade está no hash e retorna o código de área
    if dial_book.include?(city)
        puts "o código de área de #{city.capitalize} é: #{get_area_code(dial_book, city)}"
    end
end

puts "Obrigado por usar o sistema de códigos de área!"