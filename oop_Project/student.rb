class Student
    # Cria atributos com acesso para leitura e escrita para os atributos indicados
    attr_accessor :first_name, :last_name, :email, :username, :password

    # Método construtor chamado quando criamos um novo objeto Student
    def initialize(first_name, last_name, username, email, password)
        # Define variáveis de instância com os valores recebidos ao criar o objeto
        @first_name = first_name
        @last_name = last_name
        @username = username
        @email = email
        @password = password
    end

    # Método para apresentar o objeto como string ao usar puts
    def to_s
        # Retorna uma string formada com as informações do estudante
        "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
    end
end

# Cria um novo objeto da classe Student
tony = Student.new("Tony", "Stark", "tony1", "tony@example.com", "password1")
bruce = Student.new("Bruce", "Banner", "bruce1", "bruce@example.com", "password2")

puts tony
puts bruce
# altera o sobrenome de tony para ser igual ao de bruce
tony.last_name = bruce.last_name
puts "Tony is altered"
puts tony