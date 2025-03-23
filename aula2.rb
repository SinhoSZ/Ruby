# 1 --  Convertendo para números --

puts "Digite sua idade:"
idade = gets.comp.to_i # Converte para inteiro
puts "Daqui a 10 anos, você terá #{idade + 10} anos."

puts "Digite sua altura em metros:"
idade = gets.comp.to_f # Converte para float
puts "Sua altura é #{altura}m."

# 2 --  Operações Matemáticas Básicas --

a = 10
b = 3

puts "Soma: #{a + b}"                        # 13
puts "Subtração: #{a - b}"                   # 7
puts "Multiplicação: #{a * b}"               # 30
puts "Divisão: #{a / b}"                     # 3 (se ambos forem inteiros)
puts "Divisão decimal: #{a.to_f / b}"        # 3.33
puts "Módulo (resto da divisão): #{a % b}"   # 1
puts "Exponenciação: #{a**b}"                # 100 (10³)

# 3 --  Gerando Números Aleatórios --

puts rand            # Número decimal entre 0.0 e 1.0
puts rand(10)        # Número inteiro entre 0 e 9
puts rand(1..100)    # Números inteiro entre 1 e 100

# 4 -- Arredondamento de Números --

num = 5.678

puts num.round  # 6 (Arredonda para o mais próximo)
puts num.ceil   # 6 (Arredonda para cima)
puts num.floor  # 5 (Arredonda para baixo)

# 4.1 definir quantas casas decimais queremos

puts num.round(2)   # 5.68
puts num.round(1)   # 5.7

# 5 -- Verificando Par ou Ímpar --

puts "Digite um número:"
num = gets.chomp.to_i

if num.even?
    puts "#{num} é par!"
else
    puts "#{num} é ímpar!"
end

# 6 -- Trabalhando com Raízes  Potências --

puts Math.sqrt(16)  # 4.0 (raiz quadrada)
puts Math.cbrt(27)  # 3.0 (raiz cúbica)
puts 2**3           # 8 (Potência)

# 7 -- Máximo e Mínimo de uma lista de números --

numeros = [3, 5, 9, 2, 8]

puts "Maior número: #{numeros.max}" # 9
puts "Menor número: #{numeros.min}" # 2

# 8 -- Formatando Números --

valor = 12.34567

puts format("%.2f", valor)  # "12.35"
puts sprintf("%.3f", valor) # "12.346"

# 9 -- Trabalhando com Fatriais --

def fatorial(n)
    (1..n).inject(:*) || 1
end

puts fatorial(5) # 5! = 5 x 4 x 3 x 2 x 1 = 120

# 10 -- Números Romanos para indo-arábicos --

require 'roman-numerals'

puts RomanNumerals.to_arabic('XIV') # 14
puts RomanNumerals.to_roman(2024)   # MMXXIV