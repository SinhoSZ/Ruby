# 1 -- COMANDOS BÁSICOS --

puts "Hello Word!"      # Exibe uma mensagem no console
print "olá, mundo!"     # Exibe uma mensagem sem pular linha
gets.chomp              # lê entrada do usuário

nome = gets.chomp
puts "Olá, #{nome}" # Para armazenar a entrada em uma variável para uso posterior

# 2 -- VARIÁVEIS E TIPOS DE DADOS --

nome = "john"       # string
idade = 30          # Inteiro
altura = 1.75       # Float
verdadeiro =  true  # Booleano

# 3 -- Interpolação de String --

nome = "john"
puts "Meu nome é #{nome}" # "Meu nome é john"

# 3.1 -- Evitando a interpolação de variáveis

puts "\#{nome}" # Isso imprimirá exatamente "#{nome}"

# 4 -- Concatenação de string --

string1 = "Olá"
string2 = "Mundo"

puts string1 + string2          # "OláMundo"
puts string1 + " " + string2    # Olá Mundo

# 6 -- LOOP (while) --

#   contador = 0                        # Define uma variável contador com valor inicial 0
#   while contados <5                   # Enquanto o contador for menor que 5
#        puts "Contagem: #{contador}"   # Exibe a contagem atual
#        contador += 1                  # Incrementa o contador em 1
#   end 

# 6.1 -- LOOP (FOR) --

# for i in 1..5             # Percorre os números de 1 a 5
    # puts "Número: #{i}"   # Exibe o número atual
# end                       # Fim do loop

# 6.2 -- LOOP (each) --

# [1, 2, 3, 4, 5].each do |numero|  # Itera sobre um array de números
#     puts "Número: #{numero}"      # Exibe cada número
# end

# 7 -- MÉTODOS (FUNÇÕES) --

def saudacao(nome)       # Define um método chamado `saudacao` que recebe um parâmetro `nome`
    puts "Olá, #{nome}!" # Exibe a saudação com o nome fornecido
end

saudacao("José")        # Chama o método e passa "José" como argumento

# 8 -- ARRAYS E HASHES --

# (Array)

nome = ["Alice", "Bob", "Carlos"]   # Cria um array com três elementos
puts nomes[0]                       # Exibe o primeiro elemento do array (Alice)
nomes << "Daniel"                   # Adiciona um novo elemento

# (Hash (Dicionario))

pessoa = { nome: "john", idade: 30, cidade: "New york"} # Define um hash com três chaves
puts pessoa[:nome]                                      # Acessa e exibe o valor da chave `:nome` (John)

# 9 -- MANIPULAÇÃO DE STRING --

nome = "Ruby"       # Define uma string
puts nome.upcase    # Converte a string para maiúsculas (RUBY)
puts nome.downcase  # Converte a string para minúsculas (ruby)
puts nome.reverse   # Inverte a string (ybuR)
puts nome.length    # Retorna o número de caracteres da string (4)
variavel.class      # Descobrindo a classe de um objeto
objeto.methods      # Listando métodos disponíveis para um objeto
objeto.nil?         # Verificar se um objeto é nil (NULO)
string.empty?       # Verificar se uma string está vazia

# 10 -- MANIPULAÇÃO DE ARQUIVOS --

# Criar e escrever em um arquivo
File.open("arquivo.txt", "w") { |file| file.puts "Olá, Ruby!"}

# Ler um arquivo
conteudo = File.read("arquivo.txt")
puts conteudo   # Exibe o conteúdo do arquivo

# 11 -- PROGRAMAÇÃO ORIENTADA A OBJETOS --

class Pessoa                        # Define uma class chamada Pessoa
    attr_accessor :nome, :idade     # permite acessar e modificar "nome" e "idade"

    def initialize(nome, idade) # Método construtor
        @nome = nome            # Atributo nome
        @idade = idade          # Atributo idade
    end

    def apresentar
        puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
    end
end

pessoa = Pessoa.new("John", 30)     # Cria um novo objeto da classe `Pessoa`
pessoa.apresentar                   # Chama o método `apresentar`