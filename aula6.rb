# CÓDIGO RUBY LIMPO

# -- 1 CONVENÇÕES DE NOMEAÇÃO

    # variáveis e métodos = snake_case
    # classes e módulos = CamelCase
    # Constantes = SCREAMING_SNAKE_CASE

nome_completo = "peter parker"  # Variável

def calcular_total              # Método
    # código
end

class UsuarioAtivo              # Classe
    # código
end

PI = 3.14                       # Constante


# 2 -- INDENTAÇÃO E ESPAÇAMENTO --

    # Usar 2 espaço para indentação (NÃO USAR TABULAÇÃO)
    # Espaço após vírgulas e antes e depois de operadores

    # CERTO
def soma(a, b)
    resultado = a + b
    resultado
end


# 3 -- USO DE PARÊNTESES

    # opiconal em chamadas de método simples
    # obrigatório se houver múltiplos argumentos ou evitar ambiguidades

puts "Hello, world!"    # Sem parênteses
soma(5, 10)             # Com parênteses


# 4 -- STRING: ASPAS SIMPLES VS DUPLAS

    # simples: usa quando não há interpolação
    # duplas: permite interplação e caracteres especiais

nome = 'Tony Stark' # Aspas simples
puts "Olá, #{nome}" # Aspas duplas com interpolação


# 5 -- EVITAR return DESNECESSÁRIO

    # Em ruby, a última linha do método já é retornada automaticamnte

    # CERTO
def dobro(n)
    n * 2 # retorna automaticamente
end

    # ERRADO
def dobro(n)
    return n * 2 # 'return desnecessário'
end

# 6 -- USO DE each EM VEZ DE for

    # evite for, prefira iteradores (each, map, select, reject)

    # CERTO
numeros = [ 1, 2, 3, 4, 5]

numeros.each do |n|
    puts n
end


# 7 -- EVITAR unless COM else

    # unless É MELHOR USADO PARA CASOS SIMPLES, SEM else

    # CERTO
puts "Você não tem permissão" unless usuario.admin?


# 8 -- USO DE symbol AO INVÉS DE string COMO CHAVE DE HASH

    # symbol (:chave) é mais eficiente que string ("chave")

    # CERTO
usuario = { nome: "Jailson", idade: 30 }
puts usuario{:nome}


# 9 -- CÓDIGO LIMPO E SIMPLES

    # evite linhas muitos longas
    # divida métodos longos em menores

    # CERTO
def saudacao(nome)
    "Hello, #{name}! Welcome."
end
