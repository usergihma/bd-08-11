CREATE DATABASE voar1;
USE voar1;

CREATE TABLE Aeronave (
    id_nave INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    comunicador VARCHAR(255),
    destino VARCHAR(255)
);

CREATE TABLE Passageiro (
    id_pass INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(50),
    endereco VARCHAR(255),
    id_nave INT,
    FOREIGN KEY (id_nave) REFERENCES Aeronave(id_nave)
);

INSERT INTO Aeronave (nome, comunicador, destino)
values
    ('Airbus A320', 'Comunicador Alfa', 'Paris'),
    ('Boeing 737', 'Comunicador Bravo', 'Nova Iorque'),
    ('Embraer E195', 'Comunicador Charlie', 'Londres'),
    ('Cessna 172', 'Comunicador Delta', 'Tóquio'),
    ('G650', 'Comunicador Echo', 'Dubai');
    
INSERT INTO Passageiro (nome, telefone, endereco, id_nave) 
values
    ('Albert Einstein', '123456789', '123 Rua da Ciência', 1),
    ('Marie Curie', '987654321', '456 Avenida da Radiação', 1),
    ('Isaac Newton', '456789123', '789 Praça da Gravidade', 1),
    ('Leonardo da Vinci', '789123456', '321 Rua do Renascimento', 2),
    ('Nicolas Tesla', '654321987', '654 Bairro da Engenharia', 2);
    
    SELECT * FROM Aeronave;
	SELECT * FROM Passageiro;
    
    update Passageiro
    Set nome = "Alberto Roberto"
    where id_pass = 1;
    
	update Aeronave
    Set nome = "SpaceX"
    where id_nave = 3;
    
    delete from Passageiro
    where id = 5;
     
    CREATE view vw_passageiros_voa AS 
      SELECT 
		passageiro.nome AS Nome_Passageiro,
        aeronave.nome AS Nome_Aeronave,
        aeronave.destino AS Destino_Aeronave,
       FROM Passageiro
   INNER JOIN aeronave ON passageiro.id_nave = aeronave.id_nave;
   
passageiro   SELECT * from vw_passageiros_voa;