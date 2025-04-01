# CONDICIONAIS if, else, elsif

# 1 -- se a condição for verdadeira
idade = 18

if idade >= 18
    puts "você é maior de idade!"
end

# 2 -- condição com alternativa

idade = 16 

if idade >= 16
    puts "você pode dirigir!"
else
    puts "você ainda não pode dirigir!"
end

# 3 -- VÁRIAS CONDIÇÕES

nota = 7

if nota >= 9
    puts "ótimo aluno!"
elsif nota >= 7             # elsif testa várias condições antes do else
    puts "aluno aprovado!"
else
    puts "aluno reprovado!"
end

# 4 -- IF EM LINHA ÚNICA    

puts "bem-vindo!" if idade >= 18

    # mesma coisa que:

if idade >= 18
    puts "bem-vindo!"
end

# 5 -- unless OPOSTO DO IF

idade = 16

unless idade >= 18      # unless executa o código se a condição for falsa
    puts "vcê ainda não pode votar!"
end

# 6 -- OPERADOR TERNÁRIO (? :)

idade = 20
mensagem = idade >= 18 ? "mair de idade" : "menor de idade"
# podemos simplificar if...else com operador ternário
puts mensagem

# 7 -- case (ALTERNATIVA AO if COM MUITAS CONDIÇÕES)

dia = "domingo"

case dia
when "segunda", "terça", "quarta", "quinta", "sexta"
    puts "dia de trabalho!"
when "sábado", "domingo"
    puts "fim de semana!"
else
    puts "dia inválido!"
end

# 8 -- && (E LÓGICO - AND)

idade = 20
tem_carteira = true

if idade >= 18 && tem_carteira
# retorna true apenas se todas as condições forem verdadeiras
    puts "vcê pode dirigir!"
else
    puts "você não pode dirigir!"
end

# 9 -- || (OU LÓGICO - OR)

dinheiro = false
cartao = true

if dinheiro || cartao
# retorna true se pelo menos uma das condições for verdadeira
    puts "você pode fazer a compra!"
else
    puts "você não pode fazer a compra!"
end

# 10 -- ! (NÃO LÓGICO - NOT)

chovendo = false

if !chovendo
#inverte o valor lógico de uma condição
    puts "podemos sair sem guarda-chuva!"
else
    puts "pegue o guarda-chuva!"
end

# 11 -- COMBINAÇÃO DE OPERADORES LÓGICOS

idade = 25
tem_ingresso = true
barrado = false

if idade >= 18 && tem_ingresso && !barrado
    puts "podemos entrar na festa!"
else
    puts "entrada proíbida!"
end