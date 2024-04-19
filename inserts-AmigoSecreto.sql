USE AMIGOSECRETO;

INSERT INTO Grupo (nome_grupo, dt_inicio, dt_final, valor, tipo_amg_scrto, descricao) VALUES
    ("Amigo da Fabrica", CURRENT_DATE, "2024-05-01", 50.00, "Amigo chocolate", NULL);

INSERT INTO Participantes (nome_partic, cargo, apelido, id_grupo) VALUES 
	 ("Joaquim", "Adm", "tago", 1),
    ("Jefferson", "Usuario", "Masqueico", 1),
    ("Jessica", "Usuario", "Trigi", 1),
    ("Jonathan", "Usuario", "Chacorro", 1),
    ("Janivario", "Usuario", "Vacalo", 1),
    ("Jeremias", "Usuario", "Efelante", 1);

INSERT INTO Lista (presente) VALUES
    ("Baraio"),
    ("Apito"),
    ("Hot Wheels"),
    ("Capinha"),
    ("Cabo USB");

INSERT INTO Dupla (partic_1, partic_2) VALUES
    (NULL, NULL),
    (NULL, NULL),
    (NULL, NULL),
    (NULL, NULL),
    (NULL, NULL);

INSERT INTO Chat (mensagem_self, mensagem_other) VALUES
    (NULL, NULL),
    (NULL, NULL),
    (NULL, NULL),
    (NULL, NULL),
    (NULL, NULL);