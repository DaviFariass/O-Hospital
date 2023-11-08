ALTER TABLE medicos
ADD em_atividade BOOLEAN;

-- Atualiza dois médicos como inativos
UPDATE medicos
SET em_atividade = false
WHERE id_medico IN (1, 2, 3, 4);

-- Atualiza os demais médicos como ativos
UPDATE medicos
SET em_atividade = true
WHERE id_medico NOT IN (1, 2, 3, 4);
