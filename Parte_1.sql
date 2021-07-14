CREATE TABLE IF NOT EXISTS usuario_rede_sociais(
	id BIGSERIAL CONSTRAINT pk_usuario_rede PRIMARY KEY
)

CREATE TABLE IF NOT EXISTS redes_sociais(
	id BIGSERIAL CONSTRAINT pk_rede PRIMARY KEY,
	nome VARCHAR(150) NOT NULL UNIQUE
)

CREATE TABLE IF NOT EXISTS usuarios(
	id BIGSERIAL CONSTRAINT pk_usuarios PRIMARY KEY,
	nome VARCHAR(100),
	email VARCHAR NOT NULL UNIQUE,
	senha VARCHAR NOT NULL
)

CREATE TABLE IF NOT EXISTS enderecos(
	id BIGSERIAL CONSTRAINT pk_enderecos PRIMARY KEY,
	rua VARCHAR NOT NULL,
	pais VARCHAR(100) NOT NULL,
	cidade VARCHAR(100) NOT NULL
)

ALTER TABLE
	usuarios
ADD 
	endereco_id INTEGER NOT NULL

ALTER TABLE
	usuarios
ADD FOREIGN KEY
	(endereco_id)
		REFERENCES
			enderecos(id);
			
ALTER TABLE
	usuario_rede_sociais
ADD 
	usuario_id INTEGER NOT NULL
	
ALTER TABLE 
	usuario_rede_sociais
ADD FOREIGN KEY
	(usuario_id)
		REFERENCES
			usuarios(id)
			
ALTER TABLE
	usuario_rede_sociais
ADD 
	rede_social_id INTEGER NOT NULL
	
ALTER TABLE 
	usuario_rede_sociais
ADD FOREIGN KEY
	(rede_social_id)
		REFERENCES
			redes_sociais(id)
			
	
	
	
	
	
	
