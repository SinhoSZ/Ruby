# 1 -- CONVERTENDO PARA NÚMEROS --

puts "Digite sua idade:"
idade = gets.comp.to_i # Converte para inteiro
puts "Daqui a 10 anos, você terá #{idade + 10} anos."

puts "Digite sua altura em metros:"
idade = gets.comp.to_f # Converte para float
puts "Sua altura é #{altura}m."

# 2 -- OPERAÇÕES MATEMÁTICA BÁSICAS --

a = 10
b = 3

puts "Soma: #{a + b}"                        # 13
puts "Subtração: #{a - b}"                   # 7
puts "Multiplicação: #{a * b}"               # 30
puts "Divisão: #{a / b}"                     # 3 (se ambos forem inteiros)
puts "Divisão decimal: #{a.to_f / b}"        # 3.33
puts "Módulo (resto da divisão): #{a % b}"   # 1
puts "Exponenciação: #{a**b}"                # 100 (10³)

puts 10 == 10   # Igualdade 
puts 10 != 10   # Diferença
puts 10 > 5     # Maior
puts 5 < 10     # Menor
puts 10 >= 10   # Maior ou Igual
puts 7 <= 5     # Menor ou Igual

# 2.1 -- COMPARAÇÃO OPERADOR SPACESHIO
puts 10 <=> 20   # -1 (Se o primeiro valor for MENOR que o segundo)
puts 15 <=> 15   #  0 (Se forem iguais)
puts 10 <=> 20   # +1 (Se o primeiro valor for MAIOR que o segundo)

# 2.2 --  COMPARAÇÃO DE OBJETOS (equal?)
a = "Ruby"
b = "Ruby"
c = a

puts a.equal?(b)    # false (mesmo valor, mas objetos diferentes)
puts a.equal?(c)    # true (apontam para o mesmo objeto)

# 2.3 --COMPARAÇÃO DE TIPOS === É USADO EM:
# case
idade = 25

case idade
when 0..17
    puts "Menor de idade"
when 18..64
    puts "Adulto"
else
    puts "Idoso"
end

# classes
puts Integer  === 10    # true
puts String === "Ruby"  # true
puts Float === 5        # false

# 3 --  GERANDO NÚMEROS ALEATÓRIOS --

puts rand            # Número decimal entre 0.0 e 1.0
puts rand(10)        # Número inteiro entre 0 e 9
puts rand(1..100)    # Números inteiro entre 1 e 100

# 4 -- ARREDONDAMENTO DE NÚMEROS --

num = 5.678

puts num.round  # 6 (Arredonda para o mais próximo)
puts num.ceil   # 6 (Arredonda para cima)
puts num.floor  # 5 (Arredonda para baixo)

# 4.1 -- DEFINIR QUANTAS CASAS DECIMAIS QUEREMOS

puts num.round(2)   # 5.68
puts num.round(1)   # 5.7

# 5 -- VERIFICAMOS PAR OU ÍMPAR --

puts "Digite um número:"
num = gets.chomp.to_i

if num.even?
    puts "#{num} é par!"
else
    puts "#{num} é ímpar!"
end

# 6 -- TRABALHANDO COM RAÍZES, POTÊNCIAS --

puts Math.sqrt(16)  # 4.0 (raiz quadrada)
puts Math.cbrt(27)  # 3.0 (raiz cúbica)
puts 2**3           # 8 (Potência)

# 7 -- MÁXIMO E MÍNIMO DE UMA LISTA DE NÚMEROS --

numeros = [3, 5, 9, 2, 8]

puts "Maior número: #{numeros.max}" # 9
puts "Menor número: #{numeros.min}" # 2

# 8 -- FORMATANDO NÚMEROS --

valor = 12.34567

puts format("%.2f", valor)  # "12.35"
puts sprintf("%.3f", valor) # "12.346"

# 9 -- TRABALHANDO COM FATRIAIS --

def fatorial(n)
    (1..n).inject(:*) || 1
end

puts fatorial(5) # 5! = 5 x 4 x 3 x 2 x 1 = 120

# 10 -- NÚMEROS ROMANOS PARA IMDO-ARÁBICOS --

require 'roman-numerals'

puts RomanNumerals.to_arabic('XIV') # 14
puts RomanNumerals.to_roman(2024)   # MMXXIV