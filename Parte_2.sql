INSERT INTO enderecos
	(rua, pais, cidade)
VALUES 
	('Avenida Higienópolis', 'Brasil', 'Londrina'),
	('Avenida Paulista', 'Brasil', 'São Paulo'),
	('Rua Marcelino Champagnat', 'Brasil', 'Curitiba')

INSERT INTO usuarios 
	(nome, email, senha, endereco_id)
VALUES 
	('Cauan', 'cauan@exemple.com', 1234, (SELECT id FROM enderecos WHERE cidade = 'São Paulo')),
	('Chrystian', 'chrystian@exemple.com', 4321, (SELECT id FROM enderecos WHERE cidade = 'Curitiba')),
	('Matheus', 'matheus@exemple.com', 3214, (SELECT id FROM enderecos WHERE cidade = 'Londrina'))

INSERT INTO redes_sociais 
	(nome)
VALUES 
	('Youtube'),
	('Twitter'),
	('Instagram'),
	('Facebook'),
	('TikTok')
	
INSERT INTO usuario_rede_sociais 
	(usuario_id, rede_social_id)
VALUES 
	((SELECT id FROM usuarios WHERE nome = 'Cauan'), (SELECT id FROM redes_sociais WHERE nome = 'Youtube')),
	((SELECT id FROM usuarios WHERE nome = 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome = 'Youtube')),
	((SELECT id FROM usuarios WHERE nome = 'Matheus'), (SELECT id FROM redes_sociais WHERE nome = 'Youtube')),
	((SELECT id FROM usuarios WHERE nome = 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome = 'Twitter')),
	((SELECT id FROM usuarios WHERE nome = 'Cauan'), (SELECT id FROM redes_sociais WHERE nome = 'Twitter')),
	((SELECT id FROM usuarios WHERE nome = 'Matheus'), (SELECT id FROM redes_sociais WHERE nome = 'Instagram')),
	((SELECT id FROM usuarios WHERE nome = 'Matheus'), (SELECT id FROM redes_sociais WHERE nome = 'Facebook')),
	((SELECT id FROM usuarios WHERE nome = 'Chrystian'), (SELECT id FROM redes_sociais WHERE nome = 'Instagram')),
	((SELECT id FROM usuarios WHERE nome = 'Cauan'), (SELECT id FROM redes_sociais WHERE nome = 'TikTok'))
	
	
	
	
	
	