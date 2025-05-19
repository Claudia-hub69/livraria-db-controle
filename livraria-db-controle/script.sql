-- Criação das tabelas
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2)
);

CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  id_produto INT,
  quantidade INT,
  data_pedido DATE,
  FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserção de dados na tabela produtos
INSERT INTO produtos (id, nome, preco) VALUES
(1, 'Café Expresso', 5.50),
(2, 'Cappuccino', 7.00),
(3, 'Bolo de Chocolate', 6.00);

-- Inserção de dados na tabela pedidos
INSERT INTO pedidos (id, id_produto, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-05-18'),
(2, 2, 1, '2025-05-18'),
(3, 3, 3, '2025-05-19');
