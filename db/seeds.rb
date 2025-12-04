# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Limpando os bancos"
Message.destroy_all
Conversation.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Criando usuário padrão"
user = User.create!(email: "inventei@example.com", password: "123456")

puts "Criando os restaurantes"

Restaurant.create!(
  city: "São Paulo",
  user: user,
  content: <<-HEREDOC
Nome: Cantina Bella Vista
Cidade: São Paulo (SP)

Descrição:
Restaurante italiano com foco em massas frescas e molhos feitos na casa.
Perfeito para um jantar tranquilo perto da Av. Paulista, com carta de vinhos simples,
mas bem escolhida.

Destaques:
- Fettuccine ao molho de funghi
- Lasanha de berinjela

Nome: Burger Lab Pinheiros
Cidade: São Paulo (SP)

Descrição:
Hamburgueria artesanal em Pinheiros, com blends diferentes e opções vegetarianas.
Ambiente jovem, ideal para ir com amigos depois do trabalho.

Destaques:
- Burger da casa com cheddar inglês
- Burger vegetariano de grão-de-bico
HEREDOC
)

# Restaurant.create!(
#   city: "São Paulo",
#   user: user,
#   content: <<-HEREDOC
# Nome: Burger Lab Pinheiros
# Cidade: São Paulo (SP)

# Descrição:
# Hamburgueria artesanal em Pinheiros, com blends diferentes e opções vegetarianas.
# Ambiente jovem, ideal para ir com amigos depois do trabalho.

# Destaques:
# - Burger da casa com cheddar inglês
# - Burger vegetariano de grão-de-bico
# HEREDOC
# )

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

Nome: Boteco da Orla
Cidade: Rio de Janeiro (RJ)

Descrição:
Bar e restaurante de frente para o mar, com porções para compartilhar e drinks autorais.
Perfeito para ver o pôr do sol com petiscos variados.

Destaques:
- Bolinho de bacalhau
- Pastel de camarão
HEREDOC
)

# Restaurant.create!(
#   city: "Rio de Janeiro",
#   user: user,
#   content: <<-HEREDOC
# Nome: Boteco da Orla
# Cidade: Rio de Janeiro (RJ)

# Descrição:
# Bar e restaurante de frente para o mar, com porções para compartilhar e drinks autorais.
# Perfeito para ver o pôr do sol com petiscos variados.

# Destaques:
# - Bolinho de bacalhau
# - Pastel de camarão
# HEREDOC
# )

Restaurant.create!(
  city: "Belo Horizonte",
  user: user,
  content: <<-HEREDOC
Nome: Bar do Zé
Cidade: Belo Horizonte (MG)

Descrição:
Boteco tradicional de BH, focado em porções generosas e cerveja gelada.
Experiência de bar mineiro raiz, com clima animado.

Destaques:
- Torresmo crocante
- Feijão tropeiro

Nome: Cantinho da Praça
Cidade: Belo Horizonte (MG)

Descrição:
Restaurante de comida mineira caseira, com buffet no almoço e pratos feitos à noite.
Ambiente simples, comida bem temperada e preço justo.

Destaques:
- Frango com quiabo
- Doce de leite na sobremesa
HEREDOC
)

# Restaurant.create!(
#   city: "Belo Horizonte",
#   user: user,
#   content: <<-HEREDOC
# Nome: Cantinho da Praça
# Cidade: Belo Horizonte (MG)

# Descrição:
# Restaurante de comida mineira caseira, com buffet no almoço e pratos feitos à noite.
# Ambiente simples, comida bem temperada e preço justo.

# Destaques:
# - Frango com quiabo
# - Doce de leite na sobremesa
# HEREDOC
# )

Restaurant.create!(
  city: "Salvador",
  user: user,
  content: <<-HEREDOC
Nome: Sabor da Bahia
Cidade: Salvador (BA)

Descrição:
Casa especializada em culinária baiana, próximo ao Pelourinho.
Clima colorido, música ambiente e pratos bem servidos.

Destaques:
- Moqueca de peixe
- Acarajé com vatapá e camarão

Nome: Vista Mar
Cidade: Salvador (BA)

Descrição:
Restaurante com vista para o mar, ótimo para um jantar mais tranquilo.
Cardápio mistura frutos do mar com pratos contemporâneos.

Destaques:
- Camarão na moranga
- Polvo grelhado
HEREDOC
)

# Restaurant.create!(
#   city: "Salvador",
#   user: user,
#   content: <<-HEREDOC
# Nome: Vista Mar
# Cidade: Salvador (BA)

# Descrição:
# Restaurante com vista para o mar, ótimo para um jantar mais tranquilo.
# Cardápio mistura frutos do mar com pratos contemporâneos.

# Destaques:
# - Camarão na moranga
# - Polvo grelhado
# HEREDOC
# )

Restaurant.create!(
  city: "Porto Alegre",
  user: user,
  content: <<-HEREDOC
Nome: Parrilla do Sul
Cidade: Porto Alegre (RS)

Descrição:
Restaurante focado em parrilla e cortes de carne ao estilo uruguaio/argentino.
Ambiente rústico, ideal para quem gosta de carne bem preparada.

Destaques:
- Ancho na parrilla
- Linguiça artesanal

Nome: Café da Praça
Cidade: Porto Alegre (RS)

Descrição:
Café e bistrô charmoso, ótimo para brunch ou café da tarde.
Serve tortas, sanduíches e opções leves.

Destaques:
- Torta de limão
- Sanduíche de salmão defumado
HEREDOC
)
# Restaurant.create!(
#   city: "Porto Alegre",
#   user: user,
#   content: <<-HEREDOC
# Nome: Café da Praça
# Cidade: Porto Alegre (RS)

# Descrição:
# Café e bistrô charmoso, ótimo para brunch ou café da tarde.
# Serve tortas, sanduíches e opções leves.

# Destaques:
# - Torta de limão
# - Sanduíche de salmão defumado
# HEREDOC
# )

Restaurant.create!(
  city: "Recife",
  user: user,
  content: <<-HEREDOC
Nome: Tempero Pernambucano
Cidade: Recife (PE)

Descrição:
Restaurante de comida regional, com foco em pratos típicos do Nordeste.
Próximo ao centro histórico, muito frequentado por moradores.

Destaques:
- Carne de sol com macaxeira
- Baião de dois

Nome: Peixe na Brasa
Cidade: Recife (PE)

Descrição:
Especializado em frutos do mar grelhados, ambiente simples e arejado.
Boa pedida para almoço depois de um dia de praia.

Destaques:
- Peixe inteiro na brasa
- Casquinha de siri
HEREDOC
)

# Restaurant.create!(
#   city: "Recife",
#   user: user,
#   content: <<-HEREDOC
# Nome: Peixe na Brasa
# Cidade: Recife (PE)

# Descrição:
# Especializado em frutos do mar grelhados, ambiente simples e arejado.
# Boa pedida para almoço depois de um dia de praia.

# Destaques:
# - Peixe inteiro na brasa
# - Casquinha de siri
# HEREDOC
# )

Restaurant.create!(
  city: "Fortaleza",
  user: user,
  content: <<-HEREDOC
Nome: Varanda do Sol
Cidade: Fortaleza (CE)

Descrição:
Restaurante com varanda ampla e vista para a orla.
Clima descontraído, perfeito para jantar ao ar livre.

Destaques:
- Lagosta grelhada
- Peixe ao molho de coco

Nome: Tapioca da Praça
Cidade: Fortaleza (CE)

Descrição:
Casinha especializada em tapiocas doces e salgadas.
Ideal para um lanche rápido ou café da tarde.

Destaques:
- Tapioca de carne de sol com queijo coalho
- Tapioca de banana com canela
HEREDOC
)

# Restaurant.create!(
#   city: "Fortaleza",
#   user: user,
#   content: <<-HEREDOC
# Nome: Tapioca da Praça
# Cidade: Fortaleza (CE)

# Descrição:
# Casinha especializada em tapiocas doces e salgadas.
# Ideal para um lanche rápido ou café da tarde.

# Destaques:
# - Tapioca de carne de sol com queijo coalho
# - Tapioca de banana com canela
# HEREDOC
# )
Restaurant.create!(
  city: "Curitiba",
  user: user,
  content: <<-HEREDOC
Nome: Bistro Jardim
Cidade: Curitiba (PR)

Descrição:
Bistrô contemporâneo em região arborizada, com menu enxuto que muda com a estação.
Boa opção para um jantar mais calmo ou comemoração.

Destaques:
- Risoto de cogumelos
- Filé ao molho de vinho tinto

Nome: Hamburgueria do Centro
Cidade: Curitiba (PR)

Descrição:
Hamburgueria descolada, com decoração industrial e trilha sonora pop/rock.
Serve burgers altos, batatas crunch e milkshakes.

Destaques:
- Burger duplo com bacon
- Milkshake de Oreo
HEREDOC
)

# Restaurant.create!(
#   city: "Curitiba",
#   user: user,
#   content: <<-HEREDOC
# Nome: Hamburgueria do Centro
# Cidade: Curitiba (PR)

# Descrição:
# Hamburgueria descolada, com decoração industrial e trilha sonora pop/rock.
# Serve burgers altos, batatas crunch e milkshakes.

# Destaques:
# - Burger duplo com bacon
# - Milkshake de Oreo
# HEREDOC
# )

Restaurant.create!(
  city: "Manaus",
  user: user,
  content: <<-HEREDOC
Nome: Sabores da Amazônia
Cidade: Manaus (AM)

Descrição:
Restaurante que destaca ingredientes amazônicos em pratos regionais.
Experiência diferente para quem quer provar sabores típicos.

Destaques:
- Tambaqui assado
- Tacacá
HEREDOC
)

Restaurant.create!(
  city: "Brasília",
  user: user,
  content: <<-HEREDOC
Nome: Vista do Eixo
Cidade: Brasília (DF)

Descrição:
Restaurante moderno com vista para o Eixo Monumental.
Menu variado, com toques de cozinha contemporânea.

Destaques:
- Nhoque de mandioca
- Medalhão de filé com molho de vinho
HEREDOC
)

puts "Seed ok!"
