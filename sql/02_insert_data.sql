-- =========================
-- ESPECIALIDADE
-- =========================
INSERT INTO especialidade (nome_especialidade, descricao, status) VALUES
('Ortopedia', 'Tratamento de lesões musculoesqueléticas', 'Ativo'),
('Neurologia', 'Reabilitação neurológica', 'Ativo'),
('Pediatria', 'Fisioterapia infantil', 'Ativo'),
('Esportiva', 'Reabilitação esportiva', 'Ativo'),
('Respiratória', 'Tratamento respiratório', 'Ativo');



-- =========================
-- FISIOTERAPEUTA
-- =========================
INSERT INTO fisioterapeuta (nome, crefito, telefone, email, status_profissional, id_especialidade) VALUES
('Carlos Mendes', 'CREFITO-12345', '62999990001', 'carlos@email.com', 'Ativo', 1),
('Ana Souza', 'CREFITO-54321', '62999990002', 'ana@email.com', 'Ativo', 2),
('Juliana Lima', 'CREFITO-67890', '62999990003', 'juliana@email.com', 'Ativo', 3),
('Pedro Alves', 'CREFITO-11111', '62999990004', 'pedro@email.com', 'Ativo', 4),
('Mariana Rocha', 'CREFITO-22222', '62999990005', 'mariana@email.com', 'Ativo', 5);



-- =========================
-- PACIENTE (20 REGISTROS)
-- =========================
INSERT INTO paciente (nome, cpf, data_nascimento, sexo, telefone, email, endereco, cidade, estado, tipo_sanguineo, alergias, observacoes_gerais, status_paciente) VALUES
('João Silva', '11111111111', '1990-01-10', 'M', '62988880001', 'joao@email.com', 'Rua A', 'Goiânia', 'GO', 'O+', NULL, 'Dor lombar', 'Ativo'),
('Maria Oliveira', '22222222222', '1985-03-15', 'F', '62988880002', 'maria@email.com', 'Rua B', 'Goiânia', 'GO', 'A+', NULL, 'Reabilitação joelho', 'Ativo'),
('Carlos Souza', '33333333333', '1978-07-20', 'M', '62988880003', 'carlos@email.com', 'Rua C', 'Goiânia', 'GO', 'B+', 'Dipirona', 'AVC leve', 'Ativo'),
('Ana Lima', '44444444444', '1995-09-25', 'F', '62988880004', 'ana@email.com', 'Rua D', 'Goiânia', 'GO', 'O-', NULL, 'Tendinite', 'Ativo'),
('Pedro Santos', '55555555555', '2000-11-05', 'M', '62988880005', 'pedro@email.com', 'Rua E', 'Goiânia', 'GO', 'AB+', NULL, 'Lesão esportiva', 'Ativo'),
('Lucas Mendes', '66666666666', '1992-02-14', 'M', '62988880006', 'lucas@email.com', 'Rua F', 'Goiânia', 'GO', 'A-', NULL, 'Dor cervical', 'Ativo'),
('Fernanda Alves', '77777777777', '1988-06-18', 'F', '62988880007', 'fernanda@email.com', 'Rua G', 'Goiânia', 'GO', 'B-', NULL, 'Hérnia de disco', 'Ativo'),
('Rafael Costa', '88888888888', '1991-12-30', 'M', '62988880008', 'rafael@email.com', 'Rua H', 'Goiânia', 'GO', 'O+', NULL, 'Reabilitação pós cirurgia', 'Ativo'),
('Juliana Rocha', '99999999999', '1983-04-22', 'F', '62988880009', 'juliana@email.com', 'Rua I', 'Goiânia', 'GO', 'A+', NULL, 'Dor no ombro', 'Ativo'),
('Bruno Lima', '10101010101', '1996-08-08', 'M', '62988880010', 'bruno@email.com', 'Rua J', 'Goiânia', 'GO', 'O-', NULL, 'Lesão muscular', 'Ativo'),
('Camila Souza', '12121212121', '1994-05-12', 'F', '62988880011', 'camila@email.com', 'Rua K', 'Goiânia', 'GO', 'AB-', NULL, 'Dor crônica', 'Ativo'),
('Gustavo Alves', '13131313131', '1980-10-10', 'M', '62988880012', 'gustavo@email.com', 'Rua L', 'Goiânia', 'GO', 'A+', NULL, 'Artrose', 'Ativo'),
('Patrícia Lima', '14141414141', '1987-03-03', 'F', '62988880013', 'patricia@email.com', 'Rua M', 'Goiânia', 'GO', 'B+', NULL, 'Dor lombar', 'Ativo'),
('Ricardo Mendes', '15151515151', '1993-07-07', 'M', '62988880014', 'ricardo@email.com', 'Rua N', 'Goiânia', 'GO', 'O+', NULL, 'Reabilitação esportiva', 'Ativo'),
('Sofia Oliveira', '16161616161', '2001-01-01', 'F', '62988880015', 'sofia@email.com', 'Rua O', 'Goiânia', 'GO', 'A-', NULL, 'Entorse', 'Ativo'),
('Diego Santos', '17171717171', '1990-09-09', 'M', '62988880016', 'diego@email.com', 'Rua P', 'Goiânia', 'GO', 'B+', NULL, 'Dor muscular', 'Ativo'),
('Larissa Costa', '18181818181', '1997-06-06', 'F', '62988880017', 'larissa@email.com', 'Rua Q', 'Goiânia', 'GO', 'O+', NULL, 'Tendinite', 'Ativo'),
('Eduardo Rocha', '19191919191', '1982-02-02', 'M', '62988880018', 'eduardo@email.com', 'Rua R', 'Goiânia', 'GO', 'A+', NULL, 'Reabilitação coluna', 'Ativo'),
('Beatriz Lima', '20202020202', '1998-12-12', 'F', '62988880019', 'beatriz@email.com', 'Rua S', 'Goiânia', 'GO', 'AB+', NULL, 'Dor cervical', 'Ativo'),
('Felipe Souza', '21212121221', '1999-11-11', 'M', '62988880020', 'felipe@email.com', 'Rua T', 'Goiânia', 'GO', 'O-', NULL, 'Lesão joelho', 'Ativo');



-- =========================
-- PLANO DE SAÚDE
-- =========================
INSERT INTO plano_saude (nome, tipo, telefone, email, status) VALUES
('Unimed', 'Privado', '080001', 'contato@unimed.com', 'Ativo'),
('Amil', 'Privado', '080002', 'contato@amil.com', 'Ativo'),
('SUS', 'Publico', '080003', 'sus@governo.gov', 'Ativo'),
('Bradesco Saúde', 'Privado', '080004', 'bradesco@saude.com', 'Ativo'),
('SulAmérica', 'Privado', '080005', 'sulamerica@saude.com', 'Ativo');



-- =========================
-- PACIENTE PLANO
-- =========================
INSERT INTO paciente_plano (id_paciente, id_plano_saude, numero_carteirinha, data_inicio, data_validade, status) VALUES
(1,1,'CAR001','2024-01-01','2025-01-01','Ativo'),
(2,2,'CAR002','2024-01-01','2025-01-01','Ativo'),
(3,3,'CAR003','2024-01-01','2025-01-01','Ativo'),
(4,1,'CAR004','2024-01-01','2025-01-01','Ativo'),
(5,2,'CAR005','2024-01-01','2025-01-01','Ativo');



-- =========================
-- AUTORIZACAO ATENDIMENTO
-- =========================
INSERT INTO autorizacao_atendimento (id_paciente_plano, data_autorizacao, data_validade, qtd_sessoes_autorizadas, qtd_sessoes_usadas, status) VALUES
(1,'2024-01-10','2024-12-10',10,2,'Ativo'),
(2,'2024-02-10','2024-12-10',15,5,'Ativo'),
(3,'2024-03-10','2024-12-10',20,1,'Ativo'),
(4,'2024-04-10','2024-12-10',12,3,'Ativo'),
(5,'2024-05-10','2024-12-10',18,6,'Ativo');



-- =========================
-- EXERCICIO
-- =========================
INSERT INTO exercicio (nome, descricao, categoria, nivel_dificuldade, contraindicacoes) VALUES
('Alongamento cervical', 'Exercício para pescoço', 'Alongamento', 'Fácil', NULL),
('Agachamento', 'Fortalecimento de pernas', 'Força', 'Médio', NULL),
('Prancha', 'Fortalecimento de core', 'Força', 'Difícil', NULL),
('Flexão', 'Fortalecimento superior', 'Força', 'Médio', NULL),
('Ponte', 'Fortalecimento lombar', 'Reabilitação', 'Fácil', NULL);



-- =========================
-- PLANO EXERCICIO
-- =========================
INSERT INTO plano_exercicio (id_plano_terapeutico, id_exercicio, series, repeticoes, frequencia, duracao, observacoes) VALUES
(1,1,3,10,'Diário','10 min','Sem dor'),
(1,2,3,12,'3x semana','15 min','Controlado'),
(2,3,4,30,'Diário','20 min','Atenção'),
(3,4,3,15,'3x semana','15 min','Moderado'),
(4,5,3,12,'Diário','10 min','Leve');



-- =========================
-- RECOMENDACAO IA
-- =========================
INSERT INTO recomendacao_ia (id_paciente, id_plano_terapeutico, tipo, descricao, data_recomendacao, status) VALUES
(1,1,'Exercício','Aumentar intensidade leve','2024-01-15','Ativo'),
(2,2,'Alerta','Reduzir carga de treino','2024-02-15','Ativo'),
(3,3,'Reabilitação','Manter rotina atual','2024-03-15','Ativo'),
(4,4,'Exercício','Incluir alongamento','2024-04-15','Ativo'),
(5,5,'Alerta','Monitorar dor','2024-05-15','Ativo');
