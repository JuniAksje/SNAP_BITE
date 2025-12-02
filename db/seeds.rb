# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Limpando..."
Message.destroy_all
Conversation.destroy_all
Restaurant.destroy_all
User.destroy_all

user = User.create!(email: "inventei@example.com", password: "123456")

puts "Criando restaurantes..."

Restaurant.create!(
  city: "São Paulo",
  user: user,
  content: <<-HEREDOC
Nome: Cantina Bella Vista
Cidade: São Paulo (SP)

Descrição:
Restaurante italiano com foco em massas frescas e molhos feitos na casa.
Perfeito para um jantar tranquilo perto da Av. Paulista, com cartas de vinho simples,
mas bem escolhidas.

Destaques:
- Fettuccine ao molho de funghi
- Lasanha de berinjela
HEREDOC
)

Restaurant.create!(
  city: "Rio de Janeiro",
  user: user,
  content: <<-HEREDOC
Nome: Churrascaria do Leme
Cidade: Rio de Janeiro (RJ)

Descrição:
Clássica churrascaria à beira da praia, com rodízio completo de carnes e buffet de saladas.
Ambiente informal, ótima opção para grupos e famílias aproveitando o dia de praia.

Destaques:
- Picanha na brasa
- Abacaxi grelhado com canela
HEREDOC
)

Restaurant.create!(
  city: "Belo Horizonte",
  user: user,
  content: <<-HEREDOC
Nome: Bar do Zé
Cidade: Belo Horizonte (MG)

Descrição:
Boteco tradicional de BH, focado em porções generosas e cerveja sempre gelada.
Ideal para quem quer conhecer a experiência de bar mineiro raiz.

Destaques:
- Torresmo crocante
- Feijão tropeiro
HEREDOC
)

puts "Seed ok!"
