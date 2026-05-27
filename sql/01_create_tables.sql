-- =========================
-- PHYSIOCARE AI DATABASE
-- CREATE TABLE SCRIPT
-- PostgreSQL
-- =========================

-- =========================
-- TABELA: ESPECIALIDADE
-- =========================
CREATE TABLE especialidade (
    id_especialidade SERIAL PRIMARY KEY,
    nome_especialidade VARCHAR(100) NOT NULL,
    descricao TEXT,
    status VARCHAR(20)
);

-- =========================
-- TABELA: FISIOTERAPEUTA
-- =========================
CREATE TABLE fisioterapeuta (
    id_fisioterapeuta SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crefito VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100),
    status_profissional VARCHAR(20),
    id_especialidade INT,
    FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade)
);

-- =========================
-- TABELA: PACIENTE
-- =========================
CREATE TABLE paciente (
    id_paciente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14),
    data_nascimento DATE,
    sexo VARCHAR(10),
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(150),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    tipo_sanguineo VARCHAR(5),
    alergias TEXT,
    observacoes_gerais TEXT,
    status_paciente VARCHAR(20)
);

-- =========================
-- TABELA: AVALIACAO
-- =========================
CREATE TABLE avaliacao (
    id_avaliacao SERIAL PRIMARY KEY,
    id_paciente INT,
    id_fisioterapeuta INT,
    data_avaliacao DATE,
    tipo_avaliacao VARCHAR(100),
    queixa_principal TEXT,
    historico_clinico TEXT,
    limitacoes_funcionais TEXT,
    observacoes TEXT,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_fisioterapeuta) REFERENCES fisioterapeuta(id_fisioterapeuta)
);

-- =========================
-- TABELA: DIAGNOSTICO
-- =========================
CREATE TABLE diagnostico (
    id_diagnostico SERIAL PRIMARY KEY,
    id_avaliacao INT,
    descricao TEXT,
    regiao_corporal VARCHAR(100),
    grau_severidade VARCHAR(50),
    FOREIGN KEY (id_avaliacao) REFERENCES avaliacao(id_avaliacao)
);

-- =========================
-- TABELA: PLANO TERAPEUTICO
-- =========================
CREATE TABLE plano_terapeutico (
    id_plano_terapeutico SERIAL PRIMARY KEY,
    id_paciente INT,
    id_fisioterapeuta INT,
    id_diagnostico INT,
    data_inicio DATE,
    previsao_termino DATE,
    objetivo_tratamento TEXT,
    status_plano VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_fisioterapeuta) REFERENCES fisioterapeuta(id_fisioterapeuta),
    FOREIGN KEY (id_diagnostico) REFERENCES diagnostico(id_diagnostico)
);

-- =========================
-- TABELA: SESSAO
-- =========================
CREATE TABLE sessao (
    id_sessao SERIAL PRIMARY KEY,
    id_paciente INT,
    id_fisioterapeuta INT,
    id_plano_terapeutico INT,
    data_sessao DATE,
    horario_inicio TIME,
    horario_fim TIME,
    tipo_atendimento VARCHAR(50),
    status_sessao VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_fisioterapeuta) REFERENCES fisioterapeuta(id_fisioterapeuta),
    FOREIGN KEY (id_plano_terapeutico) REFERENCES plano_terapeutico(id_plano_terapeutico)
);

-- =========================
-- TABELA: EVOLUCAO
-- =========================
CREATE TABLE evolucao (
    id_evolucao SERIAL PRIMARY KEY,
    id_sessao INT,
    nivel_dor_antes INT,
    nivel_dor_depois INT,
    mobilidade VARCHAR(50),
    forca_muscular VARCHAR(50),
    progresso_observado TEXT,
    FOREIGN KEY (id_sessao) REFERENCES sessao(id_sessao)
);

-- =========================
-- TABELA: EXERCICIO
-- =========================
CREATE TABLE exercicio (
    id_exercicio SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    categoria VARCHAR(50),
    nivel_dificuldade VARCHAR(50),
    contraindicacoes TEXT
);

-- =========================
-- TABELA: PLANO EXERCICIO
-- =========================
CREATE TABLE plano_exercicio (
    id_plano_exercicio SERIAL PRIMARY KEY,
    id_plano_terapeutico INT,
    id_exercicio INT,
    series INT,
    repeticoes INT,
    frequencia VARCHAR(50),
    duracao VARCHAR(50),
    observacoes TEXT,
    FOREIGN KEY (id_plano_terapeutico) REFERENCES plano_terapeutico(id_plano_terapeutico),
    FOREIGN KEY (id_exercicio) REFERENCES exercicio(id_exercicio)
);

-- =========================
-- TABELA: RECOMENDACAO IA
-- =========================
CREATE TABLE recomendacao_ia (
    id_recomendacao SERIAL PRIMARY KEY,
    id_paciente INT,
    id_plano_terapeutico INT,
    tipo VARCHAR(50),
    descricao TEXT,
    data_recomendacao DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_plano_terapeutico) REFERENCES plano_terapeutico(id_plano_terapeutico)
);

-- =========================
-- TABELA: PLANO DE SAUDE
-- =========================
CREATE TABLE plano_saude (
    id_plano_saude SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100),
    status VARCHAR(20)
);

-- =========================
-- TABELA: PACIENTE PLANO
-- =========================
CREATE TABLE paciente_plano (
    id_paciente_plano SERIAL PRIMARY KEY,
    id_paciente INT,
    id_plano_saude INT,
    numero_carteirinha VARCHAR(50),
    data_inicio DATE,
    data_validade DATE,
    status VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY (id_plano_saude) REFERENCES plano_saude(id_plano_saude)
);

-- =========================
-- TABELA: AUTORIZACAO ATENDIMENTO
-- =========================
CREATE TABLE autorizacao_atendimento (
    id_autorizacao SERIAL PRIMARY KEY,
    id_paciente_plano INT,
    data_autorizacao DATE,
    data_validade DATE,
    qtd_sessoes_autorizadas INT,
    qtd_sessoes_usadas INT,
    status VARCHAR(20),
    FOREIGN KEY (id_paciente_plano) REFERENCES paciente_plano(id_paciente_plano)
);
