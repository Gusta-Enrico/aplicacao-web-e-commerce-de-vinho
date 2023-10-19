# Aplicação Web - E-commerce de vinho

<h4>Projeto Integrador SENAC 3º Semestre</h4>

_Grupo: Altieres Capim, Danillo Nunes, Gustavo Enrico, Mariana Muniz, Sabrina Ribas_

Aplicação WEB - Front, back e banco;

**Aplicação WEB** será um **e-commerce de rotulos de vinho**, onde será possivel ter acesso a informações sobre o tipo de uva e o tipo de fermentação de cada rotulo.


Modelo Entidade-Relacionamento (MER) - E-commerce de Vinhos
Estrutura do MER
O MER foi projetado para abranger as principais entidades e relacionamentos do sistema. Aqui está uma visão geral das entidades e seus atributos principais:

Entidades Principais
Cliente

id_cliente (Chave Primária)
nome
email
senha
Vinho

id_vinho (Chave Primária)
nome
descricao
preco
classificacao
Pedido

id_pedido (Chave Primária)
data_pedido
total_pedido

Projeto de Desenvolvimento de E-commerce de Vinhos 
Objetivo 
O objetivo deste projeto é desenvolver uma plataforma de e-commerce de vinhos que ofereça aos usuários uma loja online simples para navegar e comprar uma variedade de vinhos, proporcionando uma experiência de compra divertida e educativa.

Metas do Projeto 
O projeto envolverá a criação de um sistema completo de e-commerce de vinhos abordando as seguintes áreas:

##Funcionalidades

Frontend
Design de interface de usuário (UI) baseado em HTML e CSS que seja atraente e flexível.
Páginas de informações sobre vinhos para exibir produtos.
Páginas de carrinho de compras e checkout.
Páginas de confirmação de pedido.
Páginas de pesquisa e categorização de vinhos.
Uma seção de cliente para gerenciar perfis e histórico de pedidos.
Backend
Desenvolvimento de servidores.
Banco de dados relacional para armazenamento de dados.
Implementação de segurança de dados e autenticação de usuários.
Desenvolvimento de lógica de negócios para processamento de pedidos, cálculo de preços e controle de estoque.
Desempenho do Sistema
Exibir detalhes sobre o vinho, incluindo nome, preço, descrição, imagem e avaliação.
Permitir que os clientes adicionem vinhos aos seus carrinhos de compra.
Permitir que os clientes alterem a quantidade de itens em seus carrinhos de compra.
Calcular o custo final com base nos produtos no carrinho.
Coletar detalhes de envio e métodos de pagamento durante o processo de checkout.
Exibir um resumo do pedido antes da confirmação.
Enviar um e-mail de confirmação após a compra.
Funcionalidade Adicional: Recomendações para Combinações de Alimentos 
Fornecer aos clientes recomendações de vinhos e refeições para combinação.
Incluir uma seção nas páginas de detalhes do vinho que sugere refeições ou cozinhas que combinam bem com o vinho escolhido.
Oferecer uma lista de receitas ou alimentos sugeridos com base no tipo de vinho escolhido.
Fornecer informações sobre o sabor, aroma e características de sabor específicas do vinho para ajudar os clientes a selecionar alimentos adequados.
Casos de Uso: 
Visualizar Especificações do Vinho
Ator Principal: Cliente

Pré-condições: O cliente está na página de detalhes do vinho.

Fluxo Principal:

O cliente seleciona um vinho.
O sistema exibe as informações do vinho.
Pós-condições: As informações do vinho são apresentadas.

Adicionar ao Carrinho de Compras 
Ator Principal: Cliente

Pré-condições: O cliente está na página de detalhes do vinho.

Fluxo Principal:

O cliente seleciona a quantidade desejada.
O cliente clica no botão "Adicionar ao Carrinho".
O sistema adiciona o vinho ao carrinho do cliente.
Pós-condições: O vinho é adicionado ao carrinho do cliente.

Visualizar o Carrinho de Compras 
Ator Principal: Cliente

Pré-condições: O cliente está logado e possui produtos em seu carrinho de compras.

Fluxo Principal:

O cliente seleciona o ícone do carrinho.
O sistema exibe os produtos no carrinho, juntamente com suas informações e quantidades.
Pós-condições: Os itens do carrinho são visíveis.

Concluir o Pedido 
Ator Principal: Cliente

Pré-condições: O cliente está logado e possui produtos em seu carrinho de compras.

Fluxo Principal:

O cliente pressiona o botão "Concluir Compra".
O sistema coleta informações de envio e pagamento.
O sistema confirma o pedido e gera um resumo.
O sistema envia um e-mail de confirmação.
Após isso, o pedido é validado e registrado.
Pesquisa e Categorização de Vinhos 
Ator Principal: Cliente

Pré-condições: O cliente está na página de pesquisa de vinhos.

Fluxo Principal:

O cliente digita termos no campo de pesquisa.
O sistema apresenta os resultados da pesquisa ou classificação.
Pós-condições: Os resultados da pesquisa são exibidos.


