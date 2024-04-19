USE AMIGOSECRETO;

SELECT * FROM Grupo;
SELECT * FROM Participantes;
SELECT * FROM Lista;
SELECT * FROM Dupla;
SELECT * FROM Chat;

SELECT id_participante, nome_partic, cargo FROM Participantes 
    WHERE nome_partic = "Jefferson" AND apelido = "Masqueico";

SELECT id_grupo, nome_grupo, tipo_amg_scrto FROM Grupo
    WHERE valor <= 50;
    
SELECT id_participante, nome_partic, cargo FROM Participantes 
    ORDER BY nome_partic DESC;
  
SELECT cargo, count(*) as numeroDePessoas FROM Participantes 
    GROUP BY cargo;
  
SELECT cargo, count(*) FROM Participantes 
    GROUP BY cargo HAVING count(*) > 1;
    
SELECT max(valor), min(valor), avg(valor) FROM Grupo;

SELECT id_participante, nome_partic, cargo FROM Participantes
	 WHERE nome_partic LIKE "%r%" AND cargo = "Usuario"
    ORDER BY nome_partic DESC;

SELECT Grupo.id_grupo, nome_grupo, id_participante, nome_partic FROM Grupo 
	 INNER JOIN Participantes ON Grupo.id_grupo = Participantes.id_grupo;