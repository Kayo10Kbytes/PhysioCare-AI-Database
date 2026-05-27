-- =====================================
-- PHYSIOCARE AI - SQL QUERIES
-- ANALYTICAL / REPORTING LAYER
-- =====================================

-- =========================
-- 1. LISTAR PACIENTES COM SEUS PLANOS DE SAÚDE
-- =========================
SELECT 
    p.nome AS paciente,
    p.cpf,
    ps.nome AS plano_saude,
    pp.numero_carteirinha,
    pp.status
FROM paciente p
JOIN paciente_plano pp ON p.id_paciente = pp.id_paciente
JOIN plano_saude ps ON pp.id_plano_saude = ps.id_plano_saude;


-- =========================
-- 2. PACIENTES E SUAS SESSÕES
-- =========================
SELECT 
    p.nome AS paciente,
    s.data_sessao,
    s.tipo_atendimento,
    s.status_sessao
FROM paciente p
JOIN sessao s ON p.id_paciente = s.id_paciente
ORDER BY s.data_sessao DESC;


-- =========================
-- 3. FISIOTERAPEUTAS E SUAS ESPECIALIDADES
-- =========================
SELECT 
    f.nome AS fisioterapeuta,
    f.crefito,
    e.nome_especialidade
FROM fisioterapeuta f
JOIN especialidade e ON f.id_especialidade = e.id_especialidade;


-- =========================
-- 4. PLANO TERAPÊUTICO COMPLETO DO PACIENTE
-- =========================
SELECT 
    p.nome AS paciente,
    pt.objetivo_tratamento,
    pt.status_plano,
    pt.data_inicio
FROM plano_terapeutico pt
JOIN paciente p ON pt.id_paciente = p.id_paciente;


-- =========================
-- 5. DIAGNÓSTICOS POR PACIENTE
-- =========================
SELECT 
    p.nome AS paciente,
    d.descricao,
    d.grau_severidade,
    d.regiao_corporal
FROM diagnostico d
JOIN avaliacao a ON d.id_avaliacao = a.id_avaliacao
JOIN paciente p ON a.id_paciente = p.id_paciente;


-- =========================
-- 6. EVOLUÇÃO DO PACIENTE NAS SESSÕES
-- =========================
SELECT 
    p.nome AS paciente,
    s.data_sessao,
    e.nivel_dor_antes,
    e.nivel_dor_depois,
    e.progresso_observado
FROM evolucao e
JOIN sessao s ON e.id_sessao = s.id_sessao
JOIN paciente p ON s.id_paciente = p.id_paciente;


-- =========================
-- 7. EXERCÍCIOS DO PLANO TERAPÊUTICO
-- =========================
SELECT 
    pt.id_plano_terapeutico,
    ex.nome AS exercicio,
    pe.series,
    pe.repeticoes,
    pe.frequencia
FROM plano_exercicio pe
JOIN exercicio ex ON pe.id_exercicio = ex.id_exercicio
JOIN plano_terapeutico pt ON pe.id_plano_terapeutico = pt.id_plano_terapeutico;


-- =========================
-- 8. QUANTIDADE DE SESSÕES POR PACIENTE
-- =========================
SELECT 
    p.nome AS paciente,
    COUNT(s.id_sessao) AS total_sessoes
FROM paciente p
LEFT JOIN sessao s ON p.id_paciente = s.id_paciente
GROUP BY p.nome
ORDER BY total_sessoes DESC;


-- =========================
-- 9. PACIENTES COM ALERTA IA
-- =========================
SELECT 
    p.nome AS paciente,
    r.tipo,
    r.descricao,
    r.data_recomendacao
FROM recomendacao_ia r
JOIN paciente p ON r.id_paciente = p.id_paciente;


-- =========================
-- 10. OCUPAÇÃO DE AUTORIZAÇÕES
-- =========================
SELECT 
    a.id_autorizacao,
    a.qtd_sessoes_autorizadas,
    a.qtd_sessoes_usadas,
    (a.qtd_sessoes_autorizadas - a.qtd_sessoes_usadas) AS sessoes_restantes
FROM autorizacao_atendimento a;
