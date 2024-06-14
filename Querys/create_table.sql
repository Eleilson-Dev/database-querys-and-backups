CREATE TABLE pessoas (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50),
  profissao VARCHAR(50),
  nascimento DATE,
  sexo ENUM('F', 'M'),
  peso FLOAT,
  altura FLOAT,
  nacionalidade VARCHAR(30) DEFAULT 'Brasil',
  PRIMARY KEY (id)
) DEFAULT CHARSET utf8;
